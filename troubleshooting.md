# Troubleshooting Guide

This guide provides solutions to common issues encountered during the installation and configuration of Splunk UBA.

## Common Issues

### Issue: Splunk UBA service fails to start

- **Solution**: Check the Splunk UBA logs for errors:
    ```bash
    sudo journalctl -u splunk_uba
    ```

### Issue: Data sources not being ingested

- **Solution**: Ensure the data source paths are correctly specified and accessible by Splunk UBA.

### Issue: High memory usage

- **Solution**: Adjust the memory allocation settings in the configuration file to match your server's capabilities.
