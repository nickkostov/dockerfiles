# Dockerfiles


## Why I have created this project:

Many companies have no standard for deploying and handling the Docker Images that they are using.

## What is the idea:
### The solution will allow small to large corporations to have a unified approach, channeling creation and responsibilites to a single team.

It will remove the question that is always being asked:

- Who is going to update my dockerimage?
  - Is it the Developer or DevOps?

### The answer to that question is pretty simple if taking that approach:

### The DevOps will collaborate with the Developer to create a beatiful and solid image which can then be used to deploy and work out the problem.

### The items that must be predicted are the following:

- What OS is best suited for your application?
- What are the dependencies and packages neccessary for troubleshooting your application?
- How would your run it if you were having the capability to work with it on a monolith?
- What is the lifecycle that you would pick on upgrading the core components?
- When is it going to be suitable to deprecate old images?
- Do you need shell and root access within the image? 
  - My comment on the root and shell access always in development and customer/quality assurance environments to have such access.
  - This will allow a developer to quickly be able to identify and provide a patch of an issue/bug before reaching production grade software.


### Best practices for handling good docker images:

- No root (elevated access) in production.
- Find a suitable scanning tool like Snyc to predict and apply security patching before releasing your images.
- Decide a good lifecycle on handling images.
  - In example the current version of ubuntu that we will use is 22.04. As we know it has support for the next 4 years. 1 year before the next LTS release you need to start shifting towards the next long term supported version. That way you will continue using the supported versions.
  - Research support of the operational systems you are going to use:
    - Provide advantages.
    - Dis-advantages.
- If you can not install a certain piece of software, you can always COPY the binaries neccessary from an officially supported image.
- Select a well know Docker repository solution like:
  - Amazon ECR
  - Docker Hub
  - Azure Container Registry
  - Artifact Registry (GCP)
- Try to unify the authentication.
- Make sure builds are clean and the next person can read and understand what you did in your Dockerimage.
- Find a good solution for CD of these images:
    - Find out which approach is best for the company: 
      - Relying on a selfhosted solutions with platforms like Circle CI. (selfhosted runners)
      - Relying on Selfhosted Platform like Jenkins
  - Jenkins
  - Circle CI
  - GitHub Actions
  - GitLab CI
  - and many more can be fitting the case.

### NB Costwise if you do the deep research you will probably find out that it does not matter what you pick. You need to decide as per how company handles intelectual property. If they are very careful when handling it, its selfhosted. If they are not scared of exposing the intelectual property, you can use platform that provides you certain running time based on their subscriptions but if you do not believe you will fit the timeframe you need to implement machines or the platform software for running the builds.


# To do in the close future (Hopefully I will have time to update the structure)

- Make my devops image. Image with all CLI tools I use on daily basis.
- Make examples of images for the different programming languages I used for running software:
  - Python
  - NodeJS
  - Java
  - PHP
    - Install the packages that are used for performing tests
    - Make sure there is good version control

# Why Circle CI:

I used Circle CI for about 3 years know and never focused on what practical solution it might provide for anyone.
Using the orb:

```yaml
orbs:
  path-filtering: circleci/path-filtering@1.0.0
```
Allows you to perform changes in specificly pointed directories.
This way you can have one centralized location for everything you handle. Instead of per project image which generates a huge volume and points for creating these Dockerimages. This approach creates a standard that can be used everywhere. 

The logic you see here is simple but it can be exteneded in multiple business units:
- Customer images
- Team images
- Specific images
- Just for fun images