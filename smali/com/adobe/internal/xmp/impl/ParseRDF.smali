.class public abstract Lcom/adobe/internal/xmp/impl/ParseRDF;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static addChildNode(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;Lcom/adobe/internal/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;
    .locals 7

    sget-object v0, Lcom/adobe/internal/xmp/XMPMetaFactory;->schema:Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xca

    if-eqz v1, :cond_f

    const-string v3, "http://purl.org/dc/1.1/"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "http://purl.org/dc/elements/1.1/"

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_dflt"

    if-nez v3, :cond_2

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    invoke-virtual {v0, v1, v3}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-static {v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v3, Lcom/adobe/internal/xmp/options/PropertyOptions;

    invoke-direct {v3}, Lcom/adobe/internal/xmp/options/PropertyOptions;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p4, :cond_3

    iget-object p1, p0, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-static {p1, v1, v4, v6}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object p1

    iput-boolean v5, p1, Lcom/adobe/internal/xmp/impl/XMPNode;->implicit:Z

    invoke-virtual {v0, p2}, Landroidx/media3/extractor/text/pgs/PgsParser;->findAlias(Ljava/lang/String;)Lcom/adobe/internal/xmp/impl/XMPSchemaRegistryImpl$1;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/internal/xmp/impl/XMPNode;

    iput-boolean v6, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->hasAliases:Z

    iput-boolean v6, p1, Lcom/adobe/internal/xmp/impl/XMPNode;->hasAliases:Z

    move p0, v6

    goto :goto_1

    :cond_3
    move p0, v5

    :goto_1
    const-string/jumbo v0, "rdf:li"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "rdf:_"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x5

    move v1, v6

    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_5

    if-eqz v1, :cond_4

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x30

    if-lt v1, v4, :cond_4

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x39

    if-gt v1, v4, :cond_4

    move v1, v6

    goto :goto_3

    :cond_4
    move v1, v5

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v1

    :cond_6
    const-string/jumbo v1, "rdf:value"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    new-instance v4, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-direct {v4, p2, p3, v3}, Lcom/adobe/internal/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    iput-boolean p0, v4, Lcom/adobe/internal/xmp/impl/XMPNode;->alias:Z

    if-nez v1, :cond_7

    invoke-virtual {p1, v4}, Lcom/adobe/internal/xmp/impl/XMPNode;->addChild(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    goto :goto_4

    :cond_7
    invoke-virtual {p1, v6, v4}, Lcom/adobe/internal/xmp/impl/XMPNode;->addChild(ILcom/adobe/internal/xmp/impl/XMPNode;)V

    :goto_4
    if-eqz v1, :cond_9

    if-nez p4, :cond_8

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object p0

    const/16 p2, 0x100

    invoke-virtual {p0, p2}, Lcom/adobe/internal/xmp/options/Options;->getOption(I)Z

    move-result p0

    if-eqz p0, :cond_8

    iput-boolean v6, p1, Lcom/adobe/internal/xmp/impl/XMPNode;->hasValueChild:Z

    goto :goto_5

    :cond_8
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string p1, "Misplaced rdf:value element"

    invoke-direct {p0, p1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_9
    :goto_5
    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object p0

    const/16 p1, 0x200

    invoke-virtual {p0, p1}, Lcom/adobe/internal/xmp/options/Options;->getOption(I)Z

    move-result p0

    if-eqz p0, :cond_a

    if-eqz v0, :cond_a

    const-string p0, "[]"

    iput-object p0, v4, Lcom/adobe/internal/xmp/impl/XMPNode;->name:Ljava/lang/String;

    return-object v4

    :cond_a
    if-nez p0, :cond_c

    if-nez v0, :cond_b

    goto :goto_6

    :cond_b
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string p1, "Misplaced rdf:li element"

    invoke-direct {p0, p1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_c
    :goto_6
    if-eqz p0, :cond_e

    if-eqz v0, :cond_d

    goto :goto_7

    :cond_d
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string p1, "Arrays cannot have arbitrary child names"

    invoke-direct {p0, p1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_e
    :goto_7
    return-object v4

    :cond_f
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string p1, "XML namespace required for all elements and attributes"

    invoke-direct {p0, p1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static addQualifierNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "xml:lang"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Lcom/adobe/internal/xmp/impl/XMPNode;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/adobe/internal/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const/4 v0, 0x0

    invoke-direct {v1, p1, p2, v0}, Lcom/adobe/internal/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    invoke-virtual {p0, v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    return-void
.end method

.method public static fixupQualifiedNode(Lcom/adobe/internal/xmp/impl/XMPNode;)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Lcom/adobe/internal/xmp/options/Options;->getOption(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/adobe/internal/xmp/options/Options;->getOption(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->removeQualifier(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    invoke-virtual {p0, v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string v0, "Redundant xml:lang for rdf:value element"

    const/16 v1, 0xcb

    invoke-direct {p0, v0, v1}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getQualifierLength()I

    move-result v2

    if-gt v0, v2, :cond_2

    invoke-virtual {v1, v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_1
    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v2

    if-gt v0, v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->hasValueChild:Z

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setStruct(Z)V

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v2

    if-eqz v2, :cond_4

    iget v3, v0, Lcom/adobe/internal/xmp/options/Options;->options:I

    iget v2, v2, Lcom/adobe/internal/xmp/options/Options;->options:I

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/adobe/internal/xmp/options/Options;->assertOptionsValid(I)V

    iput v2, v0, Lcom/adobe/internal/xmp/options/Options;->options:I

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_2
    iget-object v0, v1, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-virtual {p0, v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->addChild(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    goto :goto_3

    :cond_5
    return-void
.end method

.method public static getRDFTermKind(Lorg/w3c/dom/Node;)I
    .locals 6

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ID"

    const-string v3, "about"

    const-string v4, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    if-nez v1, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    instance-of v5, p0, Lorg/w3c/dom/Attr;

    if-eqz v5, :cond_1

    check-cast p0, Lorg/w3c/dom/Attr;

    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move-object v1, v4

    :cond_1
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const-string p0, "li"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x9

    return p0

    :cond_2
    const-string/jumbo p0, "parseType"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const-string p0, "Description"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0x8

    return p0

    :cond_4
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x3

    return p0

    :cond_5
    const-string/jumbo p0, "resource"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x5

    return p0

    :cond_6
    const-string p0, "RDF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x2

    return p0

    :cond_8
    const-string p0, "nodeID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const/4 p0, 0x6

    return p0

    :cond_9
    const-string p0, "datatype"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x7

    return p0

    :cond_a
    const-string p0, "aboutEach"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/16 p0, 0xa

    return p0

    :cond_b
    const-string p0, "aboutEachPrefix"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/16 p0, 0xb

    return p0

    :cond_c
    const-string p0, "bagID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/16 p0, 0xc

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public static isWhitespaceNode(Lorg/w3c/dom/Node;)Z
    .locals 3

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    move v0, v2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static rdf_EmptyPropertyElement(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;Lcom/adobe/internal/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V
    .locals 16

    move-object/from16 v0, p0

    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v1

    const/16 v2, 0xca

    if-nez v1, :cond_18

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v9

    const-string v10, "Unrecognized attribute of empty property element"

    const/4 v11, 0x6

    const/4 v12, 0x5

    const-string/jumbo v13, "xml:lang"

    const/4 v14, 0x2

    const-string/jumbo v15, "xmlns"

    if-ge v4, v9, :cond_b

    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    invoke-interface {v9, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {v9}, Lcom/adobe/internal/xmp/impl/ParseRDF;->getRDFTermKind(Lorg/w3c/dom/Node;)I

    move-result v1

    const-string v15, "Empty property element can\'t have both rdf:value and rdf:resource"

    if-eqz v1, :cond_7

    if-eq v1, v14, :cond_a

    const-string v13, "Empty property element can\'t have both rdf:resource and rdf:nodeID"

    if-eq v1, v12, :cond_3

    if-ne v1, v11, :cond_2

    if-nez v6, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    invoke-direct {v0, v13, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    invoke-direct {v0, v10, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_3
    if-nez v8, :cond_6

    if-nez v5, :cond_5

    if-nez v5, :cond_4

    move-object v3, v9

    :cond_4
    const/4 v6, 0x1

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const/16 v1, 0xcb

    invoke-direct {v0, v15, v1}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_6
    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    invoke-direct {v0, v13, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_7
    const-string/jumbo v1, "value"

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    if-nez v6, :cond_8

    move-object v3, v9

    const/4 v5, 0x1

    goto :goto_1

    :cond_8
    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const/16 v1, 0xcb

    invoke-direct {v0, v15, v1}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_9
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v7, 0x1

    :cond_a
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_b
    const-string v1, ""

    move-object/from16 v4, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-static {v0, v4, v8, v1, v9}, Lcom/adobe/internal/xmp/impl/ParseRDF;->addChildNode(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;Lcom/adobe/internal/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v4

    if-nez v5, :cond_c

    if-eqz v6, :cond_d

    :cond_c
    const/4 v6, 0x1

    goto :goto_2

    :cond_d
    if-eqz v7, :cond_f

    invoke-virtual {v4}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v1

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setStruct(Z)V

    move v1, v6

    goto :goto_3

    :goto_2
    if-eqz v3, :cond_e

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    :cond_e
    iput-object v1, v4, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    if-nez v5, :cond_f

    invoke-virtual {v4}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1, v14, v6}, Lcom/adobe/internal/xmp/options/Options;->setOption(IZ)V

    :cond_f
    const/4 v1, 0x0

    :goto_3
    const/4 v5, 0x0

    :goto_4
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_17

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    invoke-interface {v6, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    if-eq v6, v3, :cond_10

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_11

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    :cond_10
    :goto_5
    const/4 v9, 0x0

    goto :goto_6

    :cond_11
    invoke-static {v6}, Lcom/adobe/internal/xmp/impl/ParseRDF;->getRDFTermKind(Lorg/w3c/dom/Node;)I

    move-result v7

    if-eqz v7, :cond_14

    if-eq v7, v14, :cond_10

    if-eq v7, v12, :cond_13

    if-ne v7, v11, :cond_12

    goto :goto_5

    :cond_12
    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    invoke-direct {v0, v10, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_13
    const-string/jumbo v7, "rdf:resource"

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v7, v6}, Lcom/adobe/internal/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_14
    if-nez v1, :cond_15

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v7, v6}, Lcom/adobe/internal/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_15
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v13, v6}, Lcom/adobe/internal/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_16
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v0, v4, v6, v7, v9}, Lcom/adobe/internal/xmp/impl/ParseRDF;->addChildNode(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;Lcom/adobe/internal/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_17
    return-void

    :cond_18
    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string v1, "Nested content not allowed with rdf:resource or property attributes"

    invoke-direct {v0, v1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static rdf_LiteralPropertyElement(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;Lcom/adobe/internal/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V
    .locals 6

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/adobe/internal/xmp/impl/ParseRDF;->addChildNode(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;Lcom/adobe/internal/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object p0

    const/4 p1, 0x0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    const/16 v1, 0xca

    if-ge p3, v0, :cond_4

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0, p3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "xmlns"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "xml:lang"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v5, v0}, Lcom/adobe/internal/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ID"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "datatype"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string p1, "Invalid attribute for literal property element"

    invoke-direct {p0, p1, v1}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_3
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    const-string p3, ""

    :goto_2
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge p1, v0, :cond_6

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    invoke-static {p3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string p1, "Invalid child of literal property element"

    invoke-direct {p0, p1, v1}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_6
    iput-object p3, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    return-void
.end method

.method public static rdf_NodeElement(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;Lcom/adobe/internal/xmp/impl/XMPNode;Lorg/w3c/dom/Node;ZLcom/adobe/internal/xmp/options/ParseOptions;)V
    .locals 8

    invoke-static {p2}, Lcom/adobe/internal/xmp/impl/ParseRDF;->getRDFTermKind(Lorg/w3c/dom/Node;)I

    move-result v0

    const/16 v1, 0x8

    const/16 v2, 0xca

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string p1, "Node element must be rdf:Description or typed node"

    invoke-direct {p0, p1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    :goto_0
    const/16 v1, 0xcb

    if-eqz p3, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string p1, "Top level typed node not allowed"

    invoke-direct {p0, p1, v1}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    move v3, v0

    :goto_2
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_c

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    invoke-interface {v4, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "xmlns"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {v4}, Lcom/adobe/internal/xmp/impl/ParseRDF;->getRDFTermKind(Lorg/w3c/dom/Node;)I

    move-result v5

    if-eqz v5, :cond_a

    const/4 v6, 0x6

    const/4 v7, 0x3

    if-eq v5, v6, :cond_6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_6

    if-ne v5, v7, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string p1, "Invalid nodeElement attribute"

    invoke-direct {p0, p1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_6
    :goto_3
    if-gtz v3, :cond_9

    add-int/lit8 v3, v3, 0x1

    if-eqz p3, :cond_b

    if-ne v5, v7, :cond_b

    iget-object v5, p1, Lcom/adobe/internal/xmp/impl/XMPNode;->name:Ljava/lang/String;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    iget-object v5, p1, Lcom/adobe/internal/xmp/impl/XMPNode;->name:Ljava/lang/String;

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string p1, "Mismatched top level rdf:about values"

    invoke-direct {p0, p1, v1}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_8
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/adobe/internal/xmp/impl/XMPNode;->name:Ljava/lang/String;

    goto :goto_4

    :cond_9
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string p1, "Mutally exclusive about, ID, nodeID attributes"

    invoke-direct {p0, p1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_a
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, p1, v4, v5, p3}, Lcom/adobe/internal/xmp/impl/ParseRDF;->addChildNode(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;Lcom/adobe/internal/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;

    :cond_b
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_c
    invoke-static {p0, p1, p2, p3, p4}, Lcom/adobe/internal/xmp/impl/ParseRDF;->rdf_PropertyElementList(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;Lcom/adobe/internal/xmp/impl/XMPNode;Lorg/w3c/dom/Node;ZLcom/adobe/internal/xmp/options/ParseOptions;)V

    return-void
.end method

.method public static rdf_PropertyElementList(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;Lcom/adobe/internal/xmp/impl/XMPNode;Lorg/w3c/dom/Node;ZLcom/adobe/internal/xmp/options/ParseOptions;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v5, 0x0

    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_33

    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-interface {v6, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-static {v6}, Lcom/adobe/internal/xmp/impl/ParseRDF;->isWhitespaceNode(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_0

    :goto_1
    move/from16 v17, v5

    :goto_2
    const/16 v16, 0x0

    goto/16 :goto_18

    :cond_0
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_32

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v7

    iget v7, v7, Lcom/adobe/internal/xmp/options/PropertyOptions;->arrayElementsLimit:I

    const/4 v10, -0x1

    if-eq v7, v10, :cond_1

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v7

    iget v7, v7, Lcom/adobe/internal/xmp/options/PropertyOptions;->arrayElementsLimit:I

    if-le v5, v7, :cond_1

    goto/16 :goto_19

    :cond_1
    invoke-static {v6}, Lcom/adobe/internal/xmp/impl/ParseRDF;->getRDFTermKind(Lorg/w3c/dom/Node;)I

    move-result v7

    const/16 v10, 0x8

    if-eq v7, v10, :cond_4

    const/16 v10, 0xa

    if-gt v10, v7, :cond_2

    const/16 v10, 0xc

    if-gt v7, v10, :cond_2

    goto :goto_4

    :cond_2
    if-gt v9, v7, :cond_3

    const/4 v10, 0x7

    if-gt v7, v10, :cond_3

    move v7, v9

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    xor-int/2addr v7, v9

    goto :goto_5

    :cond_4
    :goto_4
    const/4 v7, 0x0

    :goto_5
    if-eqz v7, :cond_31

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_6
    invoke-interface {v7}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v12

    const-string/jumbo v13, "xmlns"

    if-ge v11, v12, :cond_8

    invoke-interface {v7, v11}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_7

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    :cond_5
    if-nez v10, :cond_6

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_8
    if-eqz v10, :cond_9

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v7, v11}, Lorg/w3c/dom/NamedNodeMap;->removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    goto :goto_7

    :cond_9
    invoke-interface {v7}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v10

    const/4 v11, 0x3

    if-le v10, v11, :cond_a

    invoke-static {v0, v1, v6, v2}, Lcom/adobe/internal/xmp/impl/ParseRDF;->rdf_EmptyPropertyElement(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;Lcom/adobe/internal/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    goto/16 :goto_1

    :cond_a
    const/4 v10, 0x0

    :goto_8
    invoke-interface {v7}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v12

    const-string v14, ""

    const-string v15, "ID"

    const-string/jumbo v11, "xml:lang"

    const-string v4, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    if-ge v10, v12, :cond_19

    invoke-interface {v7, v10}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    move/from16 v17, v5

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    goto :goto_9

    :cond_b
    add-int/lit8 v10, v10, 0x1

    move/from16 v5, v17

    const/4 v9, 0x1

    const/4 v11, 0x3

    goto :goto_8

    :cond_c
    :goto_9
    const-string v7, "datatype"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-static {v0, v1, v6, v2}, Lcom/adobe/internal/xmp/impl/ParseRDF;->rdf_LiteralPropertyElement(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;Lcom/adobe/internal/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    goto/16 :goto_2

    :cond_d
    const-string/jumbo v7, "parseType"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    goto/16 :goto_d

    :cond_e
    const-string v8, "Literal"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    const-string v8, "Resource"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-static {v0, v1, v6, v14, v2}, Lcom/adobe/internal/xmp/impl/ParseRDF;->addChildNode(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;Lcom/adobe/internal/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setStruct(Z)V

    const/4 v8, 0x0

    :goto_a
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v9

    if-ge v8, v9, :cond_13

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    invoke-interface {v9, v8}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_f

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    goto :goto_b

    :cond_f
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v11, v9}, Lcom/adobe/internal/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_10
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    goto :goto_b

    :cond_11
    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string v1, "Invalid attribute for ParseTypeResource property element"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_12
    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_13
    const/4 v8, 0x0

    invoke-static {v0, v5, v6, v8, v3}, Lcom/adobe/internal/xmp/impl/ParseRDF;->rdf_PropertyElementList(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;Lcom/adobe/internal/xmp/impl/XMPNode;Lorg/w3c/dom/Node;ZLcom/adobe/internal/xmp/options/ParseOptions;)V

    iget-boolean v4, v5, Lcom/adobe/internal/xmp/impl/XMPNode;->hasValueChild:Z

    if-eqz v4, :cond_14

    invoke-static {v5}, Lcom/adobe/internal/xmp/impl/ParseRDF;->fixupQualifiedNode(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    goto/16 :goto_2

    :cond_14
    :goto_c
    const/4 v11, 0x0

    goto/16 :goto_17

    :cond_15
    const-string v0, "Collection"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string v1, "ParseTypeCollection property element not allowed"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_16
    const/16 v2, 0xcb

    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string v1, "ParseTypeOther property element not allowed"

    invoke-direct {v0, v1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_17
    const/16 v2, 0xcb

    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string v1, "ParseTypeLiteral property element not allowed"

    invoke-direct {v0, v1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_18
    :goto_d
    invoke-static {v0, v1, v6, v2}, Lcom/adobe/internal/xmp/impl/ParseRDF;->rdf_EmptyPropertyElement(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;Lcom/adobe/internal/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    goto/16 :goto_2

    :cond_19
    move/from16 v17, v5

    invoke-interface {v6}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v5

    if-eqz v5, :cond_30

    const/4 v8, 0x0

    :goto_e
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v8, v5, :cond_2f

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v7, 0x3

    if-eq v5, v7, :cond_2e

    if-eqz v2, :cond_1a

    const-string v5, "iX:changes"

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    goto :goto_c

    :cond_1a
    invoke-static {v0, v1, v6, v14, v2}, Lcom/adobe/internal/xmp/impl/ParseRDF;->addChildNode(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;Lcom/adobe/internal/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v5

    const/4 v8, 0x0

    :goto_f
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v7

    if-ge v8, v7, :cond_1f

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    invoke-interface {v7, v8}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1e

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1b

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    goto :goto_10

    :cond_1b
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v11, v7}, Lcom/adobe/internal/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_1c
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_10

    :cond_1d
    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string v1, "Invalid attribute for resource property element"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1e
    :goto_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_1f
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_11
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v8, v7, :cond_2c

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-static {v7}, Lcom/adobe/internal/xmp/impl/ParseRDF;->isWhitespaceNode(Lorg/w3c/dom/Node;)Z

    move-result v10

    if-nez v10, :cond_2b

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_29

    if-nez v9, :cond_29

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x200

    const/16 v12, 0x800

    if-eqz v9, :cond_21

    const-string v13, "Bag"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_21

    invoke-virtual {v5}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v9

    const/4 v13, 0x1

    invoke-virtual {v9, v11, v13}, Lcom/adobe/internal/xmp/options/Options;->setOption(IZ)V

    :cond_20
    :goto_12
    const/16 v10, 0xcb

    goto :goto_13

    :cond_21
    const/4 v13, 0x1

    if-eqz v9, :cond_22

    const-string v14, "Seq"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_22

    invoke-virtual {v5}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v9

    invoke-virtual {v9, v11, v13}, Lcom/adobe/internal/xmp/options/Options;->setOption(IZ)V

    invoke-virtual {v9}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setArrayOrdered()V

    goto :goto_12

    :cond_22
    if-eqz v9, :cond_23

    const-string v14, "Alt"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_23

    invoke-virtual {v5}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v9

    invoke-virtual {v9, v11, v13}, Lcom/adobe/internal/xmp/options/Options;->setOption(IZ)V

    const/16 v10, 0x400

    invoke-virtual {v9, v10, v13}, Lcom/adobe/internal/xmp/options/Options;->setOption(IZ)V

    invoke-virtual {v9, v12, v13}, Lcom/adobe/internal/xmp/options/Options;->setOption(IZ)V

    goto :goto_12

    :cond_23
    invoke-virtual {v5}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setStruct(Z)V

    if-nez v9, :cond_20

    const-string v9, "Description"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_20

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_24

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x3a

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "rdf:type"

    invoke-static {v5, v10, v9}, Lcom/adobe/internal/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_24
    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string v1, "All XML elements must be in a namespace"

    const/16 v10, 0xcb

    invoke-direct {v0, v1, v10}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :goto_13
    invoke-virtual {v5}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/adobe/internal/xmp/options/Options;->getOption(I)Z

    move-result v9

    if-eqz v9, :cond_25

    iget-object v9, v3, Lcom/adobe/internal/xmp/options/ParseOptions;->mXMPNodesToLimit:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    iget-object v11, v5, Lcom/adobe/internal/xmp/impl/XMPNode;->name:Ljava/lang/String;

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-eqz v9, :cond_25

    invoke-virtual {v5}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v11, Lcom/adobe/internal/xmp/options/PropertyOptions;->arrayElementsLimit:I

    :cond_25
    const/4 v11, 0x0

    invoke-static {v0, v5, v7, v11, v3}, Lcom/adobe/internal/xmp/impl/ParseRDF;->rdf_NodeElement(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;Lcom/adobe/internal/xmp/impl/XMPNode;Lorg/w3c/dom/Node;ZLcom/adobe/internal/xmp/options/ParseOptions;)V

    iget-boolean v7, v5, Lcom/adobe/internal/xmp/impl/XMPNode;->hasValueChild:Z

    if-eqz v7, :cond_27

    invoke-static {v5}, Lcom/adobe/internal/xmp/impl/ParseRDF;->fixupQualifiedNode(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    :cond_26
    const/4 v12, 0x1

    goto :goto_14

    :cond_27
    invoke-virtual {v5}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/adobe/internal/xmp/options/Options;->getOption(I)Z

    move-result v7

    if-eqz v7, :cond_26

    invoke-virtual {v5}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/adobe/internal/xmp/options/Options;->getOption(I)Z

    move-result v7

    if-eqz v7, :cond_26

    invoke-virtual {v5}, Lcom/adobe/internal/xmp/impl/XMPNode;->hasChildren()Z

    move-result v7

    if-eqz v7, :cond_26

    invoke-virtual {v5}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v7

    :cond_28
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_26

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-virtual {v9}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v9

    const/16 v12, 0x40

    invoke-virtual {v9, v12}, Lcom/adobe/internal/xmp/options/Options;->getOption(I)Z

    move-result v9

    if-eqz v9, :cond_28

    invoke-virtual {v5}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v7

    const/16 v9, 0x1000

    const/4 v12, 0x1

    invoke-virtual {v7, v9, v12}, Lcom/adobe/internal/xmp/options/Options;->setOption(IZ)V

    invoke-static {v5}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->normalizeLangArray(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    :goto_14
    move v9, v12

    :goto_15
    const/16 v7, 0xca

    goto :goto_16

    :cond_29
    if-eqz v9, :cond_2a

    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string v1, "Invalid child of resource property element"

    const/16 v7, 0xca

    invoke-direct {v0, v1, v7}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2a
    const/16 v7, 0xca

    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string v1, "Children of resource property element must be XML elements"

    invoke-direct {v0, v1, v7}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2b
    const/16 v10, 0xcb

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto :goto_15

    :goto_16
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_11

    :cond_2c
    const/16 v7, 0xca

    const/4 v11, 0x0

    if-eqz v9, :cond_2d

    :goto_17
    move/from16 v16, v11

    goto :goto_18

    :cond_2d
    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string v1, "Missing child of resource property element"

    invoke-direct {v0, v1, v7}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2e
    const/16 v10, 0xcb

    const/4 v12, 0x1

    const/16 v16, 0x0

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_e

    :cond_2f
    const/16 v16, 0x0

    invoke-static {v0, v1, v6, v2}, Lcom/adobe/internal/xmp/impl/ParseRDF;->rdf_LiteralPropertyElement(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;Lcom/adobe/internal/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    goto :goto_18

    :cond_30
    const/16 v16, 0x0

    invoke-static {v0, v1, v6, v2}, Lcom/adobe/internal/xmp/impl/ParseRDF;->rdf_EmptyPropertyElement(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;Lcom/adobe/internal/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    :goto_18
    add-int/lit8 v5, v17, 0x1

    goto/16 :goto_0

    :cond_31
    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string v1, "Invalid property element name"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_32
    const/16 v2, 0xca

    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string v1, "Expected property element node not found"

    invoke-direct {v0, v1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_33
    :goto_19
    return-void
.end method
