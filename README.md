# APIM Scenarios

## What
Showcase common scenarios in a way that makes it simple to get up and running with the tool.  Specifically, the following scenarios provided;

- DevOps Capabilities for APIs and Assets with parameter replacement
- DevOps Capabilities for Developer Portal Customizations
- Use of GitHub Code Spaces for development
- Use of a Development APIM instance for development
- Deploying APIs along with the supporting backend services

## Why
While working with customers, these are commong scenarios they typically need to implement.  While the documentation has all the information needed to build each of these scenarios, you have to assemble information from multiple sources and there may or may not be working solutions to study.

The goal is to provide a simple working implementation of each scenario and documentation to get a team up and running quickly.

## How (Setup)

## Scenarios

### Deploy changes in Dev to prod
In this scenario you will make changes to the development APIM instance via the Azure portal.  After updating via the portal, you will export those changes, merge them with main via a pull request, then publish them to your production environment.

### Creating new API in VSCode, deploying to Prod
While the Azure Portal is easy to use, it may be easier to work with your APIs and APIM configuration via code.  We will leverage CodeSpaces and Visual Studio Code Extensions in this scenario.

### Deploy DevPortal Customizations to prod
In this scenario you will make changes to the development APIM instances developer portal.  After publishing your customizations, you will export those changes, merge them with main via a pull request, then publish them to your production environments developer portal.

### Develop and Deploy Function and Function API
Here we will show how to build a function app along with it's Azure APIM definition and deploy them together.  This will touch on what is needed to parameterize an API deployment across environments.

## Architecture Overviews

- GitHub Workflows
- GitHub Repo Structure
- APIM Export Structure