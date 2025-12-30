FROM n8nio/runners:latest
USER root
RUN cd /opt/runners/task-runner-javascript && pnpm add moment uuid
COPY pip_requirements.txt /opt/runners/task-runners-python/requirements.txt
RUN cd /opt/runners/task-runner-python && uv pip install -r /opt/runners/task-runners-python/requirements.txt
COPY task-runners.json /etc/n8n-task-runners.json
USER runner
