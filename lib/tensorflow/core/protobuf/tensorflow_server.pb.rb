#!/usr/bin/env ruby
# Generated by the protocol buffer compiler. DO NOT EDIT!

require 'protocol_buffers'

begin; require 'tensorflow/core/protobuf/config.pb'; rescue LoadError; end

module Tensorflow
  # forward declarations
  class JobDef < ::ProtocolBuffers::Message; end
  class ClusterDef < ::ProtocolBuffers::Message; end
  class ServerDef < ::ProtocolBuffers::Message; end

  class JobDef < ::ProtocolBuffers::Message
    # forward declarations
    class TasksEntry < ::ProtocolBuffers::Message; end

    set_fully_qualified_name "tensorflow.JobDef"

    # nested messages
    class TasksEntry < ::ProtocolBuffers::Message
      set_fully_qualified_name "tensorflow.JobDef.TasksEntry"

      optional :int32, :key, 1
      optional :string, :value, 2
    end

    optional :string, :name, 1
    repeated ::Tensorflow::JobDef::TasksEntry, :tasks, 2
  end

  class ClusterDef < ::ProtocolBuffers::Message
    set_fully_qualified_name "tensorflow.ClusterDef"

    repeated ::Tensorflow::JobDef, :job, 1
  end

  class ServerDef < ::ProtocolBuffers::Message
    set_fully_qualified_name "tensorflow.ServerDef"

    optional ::Tensorflow::ClusterDef, :cluster, 1
    optional :string, :job_name, 2
    optional :int32, :task_index, 3
    optional ::Tensorflow::ConfigProto, :default_session_config, 4
    optional :string, :protocol, 5
  end

end