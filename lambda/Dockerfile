# Use the official AWS Lambda Python base image
FROM public.ecr.aws/lambda/python:3.10

# Install any dependencies if needed
# For example, if you need requests library:
# RUN pip install requests

# Copy the Lambda function code into the container
COPY lambda_function.py ${LAMBDA_TASK_ROOT}

# Set the command to run the Lambda function
CMD ["lambda_function.lambda_handler"]
