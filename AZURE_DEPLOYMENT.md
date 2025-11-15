# Azure Deployment Configuration Guide

## Files Created for Azure Deployment

1. **onetapsolution.csproj** - MSBuild project file
2. **onetapsolution.sln** - Visual Studio solution file
3. **.deployment** - Kudu deployment configuration
4. **.gitignore** - Git ignore rules for build artifacts
5. **packages.config** - NuGet package dependencies
6. **Web.Release.config** - Production transformation file

## Azure App Service Configuration

### Required Application Settings

Set these in Azure Portal → Your App Service → Configuration → Application settings:

```
Host = smtp.gmail.com
Username = your-email@gmail.com
Password = your-app-specific-password
AdminEmail = admin@yourdomain.com
Port = 587
EnableSSL = true
ImagWidth = 540
ImagHeight = 650
Imagsize = 5
```

### Connection Strings (if needed)
If you add a database, configure connection strings in Azure App Service Configuration.

## GitHub Actions Deployment

The workflow file `.github/workflows/main_onetapsolution.yml` handles automatic deployment.

### Setup Steps:

1. **Create Azure App Service:**
   ```bash
   az webapp create --resource-group <resource-group> --plan <app-service-plan> --name onetapsolution --runtime "ASPNET|V4.8"
   ```

2. **Configure Federated Credentials:**
   - Create a Service Principal
   - Add federated credentials for GitHub Actions
   - Store the credentials as GitHub Secrets

3. **Push to main branch:**
   ```bash
   git add .
   git commit -m "Configure for Azure deployment"
   git push origin main
   ```

## Local Testing Before Deployment

1. Build in Release mode:
   ```bash
   msbuild onetapsolution.sln /p:Configuration=Release
   ```

2. Test the published output:
   - Check the bin/Release folder
   - Verify all dependencies are included

## Troubleshooting

### Common Issues:

1. **Build Fails:**
   - Ensure .NET Framework 4.8 SDK is installed
   - Check that all file references in .csproj are correct

2. **Deployment Fails:**
   - Verify GitHub secrets are correctly set
   - Check Azure App Service logs

3. **Runtime Errors:**
   - Enable detailed errors in Azure (customErrors mode="Off" temporarily)
   - Check Application Insights logs

### Enable Application Insights:
```bash
az webapp config appsettings set --resource-group <resource-group> --name onetapsolution --settings APPINSIGHTS_INSTRUMENTATIONKEY=<your-key>
```

## Security Recommendations

1. **Never commit sensitive data:**
   - Use Azure App Settings for secrets
   - Use environment variables
   - Consider Azure Key Vault for sensitive data

2. **Enable HTTPS Only:**
   ```bash
   az webapp update --resource-group <resource-group> --name onetapsolution --https-only true
   ```

3. **Configure authentication** if needed:
   - Enable Azure AD authentication
   - Configure IP restrictions

## Monitoring

1. **Enable Application Insights** in Azure Portal
2. **Set up alerts** for failures and performance issues
3. **Monitor logs:**
   ```bash
   az webapp log tail --resource-group <resource-group> --name onetapsolution
   ```

## Scaling

Configure auto-scaling in Azure Portal → App Service Plan → Scale out

## Custom Domain & SSL

1. Add custom domain in Azure Portal
2. Configure SSL certificate
3. Update DNS records

## Backup & Disaster Recovery

1. Enable automatic backups in Azure Portal
2. Configure backup schedule
3. Test restore procedures regularly
