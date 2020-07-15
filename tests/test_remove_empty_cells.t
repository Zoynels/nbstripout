  $ cat ${TESTDIR}/test_remove_cells.ipynb | ${NBSTRIPOUT_EXE:-nbstripout} --extra-keys "extra.cells.remove-empty-cells"
  {
   "cells": [
    {
     "cell_type": "markdown",
     "metadata": {},
     "source": [
      "This notebook tests that empty cells or cells with only spaces/tabs/newlines should be deleted.  \n",
      "If cell have any metadata or output that not striped because of 'init_cell' or 'keep_output' or another readons then such cell will not be removed"
     ]
    },
    {
     "cell_type": "markdown",
     "metadata": {},
     "source": [
      "Next cell has:\n",
      "1. ```metadata = {\"init_cell\": false, \"keep_output\": false}```\n",
      "2. **will remove cell (extra.cells.remove-empty-cells)**\n",
      "3. **will remove cell (extra.cells.remove-spaces-cells)**"
     ]
    },
    {
     "cell_type": "markdown",
     "metadata": {},
     "source": [
      "Next cell has:\n",
      "1. ```metadata = {\"init_cell\": false, \"keep_output\": false}```\n",
      "2. **will not remove cell (extra.cells.remove-empty-cells)**\n",
      "3. **will remove cell (extra.cells.remove-spaces-cells)**"
     ]
    },
    {
     "cell_type": "code",
     "execution_count": null,
     "metadata": {},
     "outputs": [],
     "source": [
      "    \n",
      "    \n",
      "    "
     ]
    },
    {
     "cell_type": "markdown",
     "metadata": {},
     "source": [
      "Next cell has:\n",
      "1. ```metadata = {\"init_cell\": true}```\n",
      "2. **will not remove cell (extra.cells.remove-empty-cells)**\n",
      "3. **will not remove cell (extra.cells.remove-spaces-cells)**"
     ]
    },
    {
     "cell_type": "code",
     "execution_count": null,
     "metadata": {
      "init_cell": true,
      "keep_output": false
     },
     "outputs": [],
     "source": [
      "    \n",
      "    \n",
      "    "
     ]
    },
    {
     "cell_type": "markdown",
     "metadata": {},
     "source": [
      "Next cell has:\n",
      "1. ```metadata = {\"keep_output\": true}```\n",
      "2. **will not remove cell (extra.cells.remove-empty-cells)**\n",
      "3. **will not remove cell (extra.cells.remove-spaces-cells)**"
     ]
    },
    {
     "cell_type": "code",
     "execution_count": null,
     "metadata": {
      "keep_output": true
     },
     "outputs": [],
     "source": [
      "    \n",
      "    \n",
      "    "
     ]
    },
    {
     "cell_type": "markdown",
     "metadata": {},
     "source": [
      "Next cell has:\n",
      "1. ```metadata = {\"tags\": [\"some_tag\"]}```\n",
      "2. **will not remove cell (extra.cells.remove-empty-cells)**\n",
      "3. **will not remove cell (extra.cells.remove-spaces-cells)**"
     ]
    },
    {
     "cell_type": "code",
     "execution_count": null,
     "metadata": {
      "tags": [
       "some_tag"
      ]
     },
     "outputs": [],
     "source": [
      "    \n",
      "    \n",
      "    "
     ]
    },
    {
     "cell_type": "markdown",
     "metadata": {},
     "source": [
      "Next cell has:\n",
      "1. ```metadata = {}```\n",
      "2. **will not remove cell (extra.cells.remove-empty-cells)**\n",
      "3. **will not remove cell (extra.cells.remove-spaces-cells)**"
     ]
    },
    {
     "cell_type": "code",
     "execution_count": null,
     "metadata": {},
     "outputs": [],
     "source": [
      "    \n",
      "    # some value\n",
      "    "
     ]
    }
   ],
   "metadata": {
    "celltoolbar": "Edit Metadata",
    "kernelspec": {
     "display_name": "Python 2",
     "language": "python",
     "name": "python2"
    },
    "language_info": {
     "codemirror_mode": {
      "name": "ipython",
      "version": 2
     },
     "file_extension": ".py",
     "mimetype": "text/x-python",
     "name": "python",
     "nbconvert_exporter": "python",
     "pygments_lexer": "ipython2",
     "version": "2.7.11"
    }
   },
   "nbformat": 4,
   "nbformat_minor": 1
  }