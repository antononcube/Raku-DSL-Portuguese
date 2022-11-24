use v6.d;

use DSL::Shared::Roles::Portuguese::ListManagementCommand;
use DSL::Shared::Roles::Portuguese::PipelineCommand;
use DSL::Shared::Roles::ErrorHandling;
use DSL::Shared::Roles::PredicateSpecification;
use DSL::Shared::Roles::English::PredicateSpecification;
use DSL::Shared::Roles::Portuguese::PredicateSpecification;

use DSL::English::DataQueryWorkflows::Grammar::DataQueryPhrases;
use DSL::English::DataQueryWorkflows::Grammarish;
use DSL::Portuguese::DataQueryWorkflows::Grammar::DataQueryPhrases;

grammar DSL::Portuguese::DataQueryWorkflows::Grammar
        does DSL::English::DataQueryWorkflows::Grammarish
        does DSL::English::DataQueryWorkflows::Grammar::DataQueryPhrases
        does DSL::Portuguese::DataQueryWorkflows::Grammar::DataQueryPhrases
        does DSL::Shared::Roles::ErrorHandling
        does DSL::Shared::Roles::Portuguese::ListManagementCommand
        does DSL::Shared::Roles::PredicateSpecification
        does DSL::Shared::Roles::English::PredicateSpecification
        does DSL::Shared::Roles::Portuguese::PredicateSpecification
        does DSL::Shared::Roles::Portuguese::PipelineCommand {

}
