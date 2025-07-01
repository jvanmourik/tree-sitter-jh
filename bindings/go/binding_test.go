package tree_sitter_jh_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_jh "github.com/jvanmourik/tree-sitter-jh/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_jh.Language())
	if language == nil {
		t.Errorf("Error loading JavaScript-HTML grammar")
	}
}
