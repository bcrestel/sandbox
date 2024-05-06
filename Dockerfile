FROM piptools:latest

ADD requirements.txt ./
RUN pip install -r requirements.txt

RUN pip install jupyterlab_execute_time
#RUN jupyter labextension install @ijmbarr/jupyterlab_cell_timing

#RUN jupyter contrib nbextension install --user && \
#    jupyter nbextension enable toc2/main && \
#    jupyter nbextension enable execute_time/ExecuteTime && \
#    jupyter nbextension enable collapsible_headings/main && \
#    jupyter nbextension enable move_selected_cells/main && \
#    jupyter nbextensions_configurator enable --user

ENV PYTHONPATH="/home"