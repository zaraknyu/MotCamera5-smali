.class public abstract Lcom/adobe/internal/xmp/XMPMetaFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final schema:Landroidx/media3/extractor/text/pgs/PgsParser;

.field public static versionInfo:Lkotlinx/coroutines/internal/Symbol;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/media3/extractor/text/pgs/PgsParser;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/extractor/text/pgs/PgsParser;-><init>(IZ)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    const-string v1, "[/*?\\[\\]]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/lang/Object;

    :try_start_0
    invoke-virtual {v0}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerStandardNamespaces()V

    invoke-virtual {v0}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerStandardAliases()V
    :try_end_0
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    sput-object v0, Lcom/adobe/internal/xmp/XMPMetaFactory;->schema:Landroidx/media3/extractor/text/pgs/PgsParser;

    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/internal/xmp/XMPMetaFactory;->versionInfo:Lkotlinx/coroutines/internal/Symbol;

    return-void

    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The XMPSchemaRegistry cannot be initialized!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseFromBuffer([B)Lcom/adobe/internal/xmp/impl/XMPMetaImpl;
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Lcom/adobe/internal/xmp/impl/XMPMetaParser;->XMP_RDF:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    const/4 v2, 0x4

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string v1, "Parameter must not be null or empty"

    invoke-direct {v0, v1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    :goto_0
    new-instance v1, Lcom/adobe/internal/xmp/options/ParseOptions;

    invoke-direct {v1}, Lcom/adobe/internal/xmp/options/Options;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lcom/adobe/internal/xmp/options/ParseOptions;->mXMPNodesToLimit:Ljava/util/HashMap;

    const/16 v3, 0x58

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/adobe/internal/xmp/options/Options;->setOption(IZ)V

    instance-of v3, v0, Ljava/io/InputStream;

    const/16 v5, 0xb

    const/16 v6, 0x10

    const/16 v7, 0x8

    const/16 v8, 0x40

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v3, :cond_4

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v1, v6}, Lcom/adobe/internal/xmp/options/Options;->getOption(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v7}, Lcom/adobe/internal/xmp/options/Options;->getOption(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v8}, Lcom/adobe/internal/xmp/options/Options;->getOption(I)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3}, Lcom/adobe/internal/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_2

    :cond_2
    :try_start_0
    new-instance v3, Lcom/google/common/base/Splitter;

    invoke-direct {v3, v10, v5}, Lcom/google/common/base/Splitter;-><init>(CI)V

    iput-object v9, v3, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    iput v10, v3, Lcom/google/common/base/Splitter;->limit:I

    const/16 v5, 0x4000

    new-array v11, v5, [B

    iput-object v11, v3, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    :goto_1
    iget-object v11, v3, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v11, [B

    iget v12, v3, Lcom/google/common/base/Splitter;->limit:I

    invoke-virtual {v0, v11, v12, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    if-lez v11, :cond_3

    iget v12, v3, Lcom/google/common/base/Splitter;->limit:I

    add-int/2addr v12, v11

    iput v12, v3, Lcom/google/common/base/Splitter;->limit:I

    if-ne v11, v5, :cond_3

    add-int/lit16 v12, v12, 0x4000

    invoke-virtual {v3, v12}, Lcom/google/common/base/Splitter;->ensureCapacity(I)V

    goto :goto_1

    :cond_3
    invoke-static {v3, v1}, Lcom/adobe/internal/xmp/impl/XMPMetaParser;->parseXmlFromBytebuffer(Lcom/google/common/base/Splitter;Lcom/adobe/internal/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/adobe/internal/xmp/XMPException;

    const-string v2, "Error reading the XML-file"

    const/16 v3, 0xcc

    invoke-direct {v1, v3, v0, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(ILjava/lang/Exception;Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v3, Lcom/google/common/base/Splitter;

    invoke-direct {v3, v10, v5}, Lcom/google/common/base/Splitter;-><init>(CI)V

    iput-object v9, v3, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    iput-object v0, v3, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    array-length v0, v0

    iput v0, v3, Lcom/google/common/base/Splitter;->limit:I

    invoke-static {v3, v1}, Lcom/adobe/internal/xmp/impl/XMPMetaParser;->parseXmlFromBytebuffer(Lcom/google/common/base/Splitter;Lcom/adobe/internal/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v4}, Lcom/adobe/internal/xmp/options/Options;->getOption(I)Z

    move-result v3

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v3, v5}, Lcom/adobe/internal/xmp/impl/XMPMetaParser;->findRootNode(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_39

    aget-object v3, v0, v4

    sget-object v5, Lcom/adobe/internal/xmp/impl/XMPMetaParser;->XMP_RDF:Ljava/lang/Object;

    if-ne v3, v5, :cond_39

    aget-object v3, v0, v10

    check-cast v3, Lorg/w3c/dom/Node;

    new-instance v5, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    invoke-direct {v5}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;-><init>()V

    invoke-interface {v3}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v11

    if-eqz v11, :cond_38

    iget-object v11, v5, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/internal/xmp/impl/XMPNode;

    move v12, v10

    :goto_3
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-ge v12, v13, :cond_6

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v13

    invoke-interface {v13, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-static {v13}, Lcom/adobe/internal/xmp/impl/ParseRDF;->isWhitespaceNode(Lorg/w3c/dom/Node;)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-static {v5, v11, v13, v4, v1}, Lcom/adobe/internal/xmp/impl/ParseRDF;->rdf_NodeElement(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;Lcom/adobe/internal/xmp/impl/XMPNode;Lorg/w3c/dom/Node;ZLcom/adobe/internal/xmp/options/ParseOptions;)V

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x2

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/String;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Lcom/adobe/internal/xmp/options/Options;->getOption(I)Z

    move-result v11

    if-nez v11, :cond_37

    sget-object v11, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/HashMap;

    iget-object v11, v5, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/internal/xmp/impl/XMPNode;

    const-string v12, "http://purl.org/dc/elements/1.1/"

    invoke-static {v11, v12, v9, v4}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;

    iget-object v13, v5, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-virtual {v13}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    const-string/jumbo v7, "x-default"

    if-eqz v15, :cond_1e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/adobe/internal/xmp/impl/XMPNode;

    iget-object v6, v15, Lcom/adobe/internal/xmp/impl/XMPNode;->name:Ljava/lang/String;

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string/jumbo v3, "xml:lang"

    const-string v4, "[]"

    if-eqz v6, :cond_b

    const/4 v6, 0x1

    :goto_5
    invoke-virtual {v15}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v2

    if-gt v6, v2, :cond_a

    invoke-virtual {v15, v6}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v2

    sget-object v10, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/HashMap;

    iget-object v8, v2, Lcom/adobe/internal/xmp/impl/XMPNode;->name:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/adobe/internal/xmp/options/PropertyOptions;

    if-nez v8, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v10

    iget v10, v10, Lcom/adobe/internal/xmp/options/Options;->options:I

    and-int/lit16 v10, v10, 0x300

    if-nez v10, :cond_8

    new-instance v10, Lcom/adobe/internal/xmp/impl/XMPNode;

    iget-object v0, v2, Lcom/adobe/internal/xmp/impl/XMPNode;->name:Ljava/lang/String;

    invoke-direct {v10, v0, v9, v8}, Lcom/adobe/internal/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    iput-object v4, v2, Lcom/adobe/internal/xmp/impl/XMPNode;->name:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->addChild(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    iput-object v15, v10, Lcom/adobe/internal/xmp/impl/XMPNode;->parent:Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-virtual {v15}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChildren()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v9, v6, -0x1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v9, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1000

    invoke-virtual {v8, v0}, Lcom/adobe/internal/xmp/options/Options;->getOption(I)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v0

    const/16 v8, 0x40

    invoke-virtual {v0, v8}, Lcom/adobe/internal/xmp/options/Options;->getOption(I)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Lcom/adobe/internal/xmp/impl/XMPNode;

    const/4 v8, 0x0

    invoke-direct {v0, v3, v7, v8}, Lcom/adobe/internal/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    invoke-virtual {v2, v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    goto :goto_6

    :cond_8
    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v0

    const/4 v9, 0x0

    const/16 v10, 0x1e00

    invoke-virtual {v0, v10, v9}, Lcom/adobe/internal/xmp/options/Options;->setOption(IZ)V

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v0

    iget v9, v0, Lcom/adobe/internal/xmp/options/Options;->options:I

    iget v10, v8, Lcom/adobe/internal/xmp/options/Options;->options:I

    or-int/2addr v9, v10

    invoke-virtual {v0, v9}, Lcom/adobe/internal/xmp/options/Options;->assertOptionsValid(I)V

    iput v9, v0, Lcom/adobe/internal/xmp/options/Options;->options:I

    const/16 v0, 0x1000

    invoke-virtual {v8, v0}, Lcom/adobe/internal/xmp/options/Options;->getOption(I)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {v2}, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->repairAltText(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    :cond_9
    :goto_6
    add-int/lit8 v6, v6, 0x1

    const/16 v8, 0x40

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto/16 :goto_5

    :cond_a
    move v2, v10

    const/4 v9, 0x2

    const/16 v10, 0x20

    goto/16 :goto_f

    :cond_b
    const-string v0, "http://ns.adobe.com/exif/1.0/"

    iget-object v2, v15, Lcom/adobe/internal/xmp/impl/XMPNode;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "exif:GPSTimeStamp"

    const/4 v9, 0x0

    invoke-static {v15, v0, v9}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v0

    if-nez v0, :cond_d

    :catch_1
    :cond_c
    :goto_7
    const/4 v9, 0x2

    goto :goto_8

    :cond_d
    :try_start_1
    iget-object v2, v0, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    invoke-static {v2}, Lcom/adobe/internal/xmp/XMPUtils;->convertToDate(Ljava/lang/String;)Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;

    move-result-object v2

    iget v6, v2, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->year:I

    if-nez v6, :cond_c

    iget v6, v2, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->month:I

    if-nez v6, :cond_c

    iget v6, v2, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->day:I

    if-eqz v6, :cond_e

    goto :goto_7

    :cond_e
    const-string v6, "exif:DateTimeOriginal"

    const/4 v9, 0x0

    invoke-static {v15, v6, v9}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v6

    if-nez v6, :cond_f

    const-string v6, "exif:DateTimeDigitized"

    invoke-static {v15, v6, v9}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v6

    :cond_f
    if-nez v6, :cond_10

    goto :goto_7

    :cond_10
    iget-object v6, v6, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    invoke-static {v6}, Lcom/adobe/internal/xmp/XMPUtils;->convertToDate(Ljava/lang/String;)Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;

    move-result-object v6

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v2

    iget v8, v6, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->year:I

    const/4 v9, 0x1

    invoke-virtual {v2, v9, v8}, Ljava/util/Calendar;->set(II)V

    iget v8, v6, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->month:I
    :try_end_1
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v9, 0x2

    :try_start_2
    invoke-virtual {v2, v9, v8}, Ljava/util/Calendar;->set(II)V

    iget v6, v6, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->day:I

    const/4 v8, 0x5

    invoke-virtual {v2, v8, v6}, Ljava/util/Calendar;->set(II)V

    new-instance v6, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;

    invoke-direct {v6, v2}, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;-><init>(Ljava/util/GregorianCalendar;)V

    invoke-static {v6}, Lcom/adobe/internal/xmp/impl/ISO8601Converter;->render(Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;
    :try_end_2
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :goto_8
    const-string v0, "exif:UserComment"

    const/4 v2, 0x0

    invoke-static {v15, v0, v2}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v2

    iget v2, v2, Lcom/adobe/internal/xmp/options/Options;->options:I

    and-int/lit16 v2, v2, 0x300

    if-nez v2, :cond_13

    new-instance v2, Lcom/adobe/internal/xmp/impl/XMPNode;

    iget-object v6, v0, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v8

    invoke-direct {v2, v4, v6, v8}, Lcom/adobe/internal/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    iput-object v0, v2, Lcom/adobe/internal/xmp/impl/XMPNode;->parent:Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getQualifierLength()I

    move-result v4

    :goto_9
    if-lez v4, :cond_11

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getQualifierLength()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v0, v6}, Lcom/adobe/internal/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/adobe/internal/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    :cond_11
    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v4

    const/16 v6, 0x10

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Lcom/adobe/internal/xmp/options/Options;->setOption(IZ)V

    const/16 v6, 0x40

    invoke-virtual {v4, v6, v8}, Lcom/adobe/internal/xmp/options/Options;->setOption(IZ)V

    const/16 v10, 0x80

    invoke-virtual {v4, v10, v8}, Lcom/adobe/internal/xmp/options/Options;->setOption(IZ)V

    const/4 v8, 0x0

    iput-object v8, v0, Lcom/adobe/internal/xmp/impl/XMPNode;->qualifier:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/adobe/internal/xmp/options/Options;->getOption(I)Z

    move-result v4

    if-nez v4, :cond_12

    new-instance v4, Lcom/adobe/internal/xmp/impl/XMPNode;

    new-instance v8, Lcom/adobe/internal/xmp/options/PropertyOptions;

    invoke-direct {v8}, Lcom/adobe/internal/xmp/options/PropertyOptions;-><init>()V

    const/16 v10, 0x20

    const/4 v15, 0x1

    invoke-virtual {v8, v10, v15}, Lcom/adobe/internal/xmp/options/Options;->setOption(IZ)V

    invoke-direct {v4, v3, v7, v8}, Lcom/adobe/internal/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    invoke-virtual {v2, v4}, Lcom/adobe/internal/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4, v15}, Lcom/adobe/internal/xmp/options/Options;->setOption(IZ)V

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v3

    invoke-virtual {v3, v6, v15}, Lcom/adobe/internal/xmp/options/Options;->setOption(IZ)V

    goto :goto_a

    :cond_12
    const/16 v10, 0x20

    :goto_a
    invoke-virtual {v0, v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->addChild(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    new-instance v2, Lcom/adobe/internal/xmp/options/PropertyOptions;

    const/16 v3, 0x1e00

    invoke-direct {v2, v3}, Lcom/adobe/internal/xmp/options/PropertyOptions;-><init>(I)V

    iput-object v2, v0, Lcom/adobe/internal/xmp/impl/XMPNode;->options:Lcom/adobe/internal/xmp/options/PropertyOptions;

    const-string v2, ""

    iput-object v2, v0, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    goto :goto_b

    :cond_13
    const/16 v10, 0x20

    :goto_b
    invoke-static {v0}, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->repairAltText(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    goto :goto_c

    :cond_14
    const/16 v10, 0x20

    :catch_3
    :cond_15
    :goto_c
    const/4 v2, 0x0

    goto/16 :goto_f

    :cond_16
    const/4 v9, 0x2

    const/16 v10, 0x20

    const-string v0, "http://ns.adobe.com/xmp/1.0/DynamicMedia/"

    iget-object v2, v15, Lcom/adobe/internal/xmp/impl/XMPNode;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string/jumbo v0, "xmpDM:copyright"

    const/4 v2, 0x0

    invoke-static {v15, v0, v2}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v0

    if-eqz v0, :cond_15

    const/4 v8, 0x0

    const/4 v15, 0x1

    :try_start_3
    invoke-static {v13, v12, v8, v15}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v3

    iget-object v4, v0, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    const-string v6, "dc:rights"

    invoke-static {v3, v6, v2}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v3
    :try_end_3
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_3 .. :try_end_3} :catch_3

    const-string v2, "\n\n"

    if-eqz v3, :cond_1a

    :try_start_4
    invoke-virtual {v3}, Lcom/adobe/internal/xmp/impl/XMPNode;->hasChildren()Z

    move-result v6

    if-nez v6, :cond_17

    goto :goto_d

    :cond_17
    invoke-static {v3, v7}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->lookupLanguageItem(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_18

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v6

    iget-object v6, v6, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setLocalizedText(Ljava/lang/String;)V

    invoke-static {v3, v7}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->lookupLanguageItem(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;)I

    move-result v6

    :cond_18
    invoke-virtual {v3, v6}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v3

    iget-object v6, v3, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_19

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    goto :goto_e

    :cond_19
    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    goto :goto_e

    :cond_1a
    :goto_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setLocalizedText(Ljava/lang/String;)V

    :cond_1b
    :goto_e
    iget-object v2, v0, Lcom/adobe/internal/xmp/impl/XMPNode;->parent:Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChildren()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v2, Lcom/adobe/internal/xmp/impl/XMPNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v8, 0x0

    iput-object v8, v2, Lcom/adobe/internal/xmp/impl/XMPNode;->children:Ljava/util/ArrayList;
    :try_end_4
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_c

    :cond_1c
    const-string v0, "http://ns.adobe.com/xap/1.0/rights/"

    iget-object v2, v15, Lcom/adobe/internal/xmp/impl/XMPNode;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string/jumbo v0, "xmpRights:UsageTerms"

    const/4 v2, 0x0

    invoke-static {v15, v0, v2}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-static {v0}, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->repairAltText(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    :cond_1d
    :goto_f
    move v3, v9

    move v0, v10

    const/4 v4, 0x1

    const/16 v6, 0x10

    const/16 v7, 0x8

    const/16 v8, 0x40

    const/4 v9, 0x0

    move v10, v2

    const/4 v2, 0x4

    goto/16 :goto_4

    :cond_1e
    move v2, v10

    iget-boolean v0, v11, Lcom/adobe/internal/xmp/impl/XMPNode;->hasAliases:Z

    if-nez v0, :cond_1f

    goto/16 :goto_15

    :cond_1f
    iput-boolean v2, v11, Lcom/adobe/internal/xmp/impl/XMPNode;->hasAliases:Z

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/adobe/internal/xmp/options/Options;->getOption(I)Z

    move-result v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v11}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/internal/xmp/impl/XMPNode;

    iget-boolean v3, v2, Lcom/adobe/internal/xmp/impl/XMPNode;->hasAliases:Z

    if-nez v3, :cond_20

    goto :goto_10

    :cond_20
    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/internal/xmp/impl/XMPNode;

    iget-boolean v6, v4, Lcom/adobe/internal/xmp/impl/XMPNode;->alias:Z

    if-nez v6, :cond_21

    goto :goto_11

    :cond_21
    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/adobe/internal/xmp/impl/XMPNode;->alias:Z

    sget-object v6, Lcom/adobe/internal/xmp/XMPMetaFactory;->schema:Landroidx/media3/extractor/text/pgs/PgsParser;

    iget-object v8, v4, Lcom/adobe/internal/xmp/impl/XMPNode;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroidx/media3/extractor/text/pgs/PgsParser;->findAlias(Ljava/lang/String;)Lcom/adobe/internal/xmp/impl/XMPSchemaRegistryImpl$1;

    move-result-object v6

    if-eqz v6, :cond_22

    iget-object v8, v6, Lcom/adobe/internal/xmp/impl/XMPSchemaRegistryImpl$1;->val$actualProp:Ljava/lang/String;

    iget-object v10, v6, Lcom/adobe/internal/xmp/impl/XMPSchemaRegistryImpl$1;->val$actualPrefix:Ljava/lang/String;

    iget-object v12, v6, Lcom/adobe/internal/xmp/impl/XMPSchemaRegistryImpl$1;->val$aliasOpts:Lcom/adobe/internal/xmp/options/AliasOptions;

    iget-object v6, v6, Lcom/adobe/internal/xmp/impl/XMPSchemaRegistryImpl$1;->val$actualNS:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v15, 0x1

    invoke-static {v11, v6, v13, v15}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v6

    iput-boolean v9, v6, Lcom/adobe/internal/xmp/impl/XMPNode;->implicit:Z

    invoke-virtual {v10, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13, v9}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v13

    if-nez v13, :cond_24

    iget v9, v12, Lcom/adobe/internal/xmp/options/Options;->options:I

    if-nez v9, :cond_23

    invoke-virtual {v10, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/adobe/internal/xmp/impl/XMPNode;->name:Ljava/lang/String;

    invoke-virtual {v6, v4}, Lcom/adobe/internal/xmp/impl/XMPNode;->addChild(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :cond_22
    :goto_12
    const/16 v6, 0x1000

    goto :goto_11

    :cond_23
    new-instance v9, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-virtual {v10, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lcom/adobe/internal/xmp/options/PropertyOptions;

    iget v12, v12, Lcom/adobe/internal/xmp/options/Options;->options:I

    invoke-direct {v10, v12}, Lcom/adobe/internal/xmp/options/PropertyOptions;-><init>(I)V

    const/4 v13, 0x0

    invoke-direct {v9, v8, v13, v10}, Lcom/adobe/internal/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    invoke-virtual {v6, v9}, Lcom/adobe/internal/xmp/impl/XMPNode;->addChild(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    invoke-static {v3, v4, v9}, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->transplantArrayItemAlias(Ljava/util/Iterator;Lcom/adobe/internal/xmp/impl/XMPNode;Lcom/adobe/internal/xmp/impl/XMPNode;)V

    goto :goto_12

    :cond_24
    iget v6, v12, Lcom/adobe/internal/xmp/options/Options;->options:I

    if-nez v6, :cond_26

    if-eqz v1, :cond_25

    const/4 v15, 0x1

    invoke-static {v4, v13, v15}, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->compareAliasedSubtrees(Lcom/adobe/internal/xmp/impl/XMPNode;Lcom/adobe/internal/xmp/impl/XMPNode;Z)V

    :cond_25
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    :cond_26
    const/16 v6, 0x1000

    invoke-virtual {v12, v6}, Lcom/adobe/internal/xmp/options/Options;->getOption(I)Z

    move-result v8

    if-eqz v8, :cond_28

    invoke-static {v13, v7}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->lookupLanguageItem(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_27

    invoke-virtual {v13, v8}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v8

    goto :goto_13

    :cond_27
    const/4 v8, 0x0

    :goto_13
    const/4 v15, 0x1

    goto :goto_14

    :cond_28
    invoke-virtual {v13}, Lcom/adobe/internal/xmp/impl/XMPNode;->hasChildren()Z

    move-result v8

    const/4 v15, 0x1

    if-eqz v8, :cond_29

    invoke-virtual {v13, v15}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v8

    goto :goto_14

    :cond_29
    const/4 v8, 0x0

    :goto_14
    if-nez v8, :cond_2a

    invoke-static {v3, v4, v13}, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->transplantArrayItemAlias(Ljava/util/Iterator;Lcom/adobe/internal/xmp/impl/XMPNode;Lcom/adobe/internal/xmp/impl/XMPNode;)V

    goto/16 :goto_11

    :cond_2a
    if-eqz v1, :cond_2b

    invoke-static {v4, v8, v15}, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->compareAliasedSubtrees(Lcom/adobe/internal/xmp/impl/XMPNode;Lcom/adobe/internal/xmp/impl/XMPNode;Z)V

    :cond_2b
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_11

    :cond_2c
    const/16 v6, 0x1000

    const/4 v9, 0x0

    iput-boolean v9, v2, Lcom/adobe/internal/xmp/impl/XMPNode;->hasAliases:Z

    goto/16 :goto_10

    :cond_2d
    :goto_15
    iget-object v0, v11, Lcom/adobe/internal/xmp/impl/XMPNode;->name:Ljava/lang/String;

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x24

    if-lt v0, v1, :cond_35

    iget-object v0, v11, Lcom/adobe/internal/xmp/impl/XMPNode;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "uuid:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2e
    sget-object v3, Lcom/adobe/internal/xmp/impl/Utils;->xmlNameStartChars:[Z

    if-nez v0, :cond_2f

    goto/16 :goto_18

    :cond_2f
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v9, v6, :cond_33

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_32

    add-int/lit8 v4, v4, 0x1

    const/16 v6, 0x8

    if-eqz v3, :cond_31

    if-eq v9, v6, :cond_30

    const/16 v3, 0xd

    if-eq v9, v3, :cond_30

    const/16 v3, 0x12

    if-eq v9, v3, :cond_30

    const/16 v3, 0x17

    if-ne v9, v3, :cond_31

    :cond_30
    const/4 v3, 0x1

    goto :goto_17

    :cond_31
    const/4 v3, 0x0

    goto :goto_17

    :cond_32
    const/16 v6, 0x8

    :goto_17
    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    :cond_33
    if-eqz v3, :cond_35

    const/4 v3, 0x4

    if-ne v3, v4, :cond_35

    if-ne v1, v9, :cond_35

    const-string v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string v3, "InstanceID"

    invoke-static {v1, v3}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/zza;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v15, 0x1

    invoke-static {v11, v1, v15, v8}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/internal/xmp/impl/XMPNode;Lcom/google/android/gms/tasks/zza;ZLcom/adobe/internal/xmp/options/PropertyOptions;)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v1

    if-eqz v1, :cond_34

    iput-object v8, v1, Lcom/adobe/internal/xmp/impl/XMPNode;->options:Lcom/adobe/internal/xmp/options/PropertyOptions;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    iput-object v8, v1, Lcom/adobe/internal/xmp/impl/XMPNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v0

    const/16 v4, 0x10

    const/4 v9, 0x0

    invoke-virtual {v0, v4, v9}, Lcom/adobe/internal/xmp/options/Options;->setOption(IZ)V

    const/16 v6, 0x40

    invoke-virtual {v0, v6, v9}, Lcom/adobe/internal/xmp/options/Options;->setOption(IZ)V

    const/16 v10, 0x80

    invoke-virtual {v0, v10, v9}, Lcom/adobe/internal/xmp/options/Options;->setOption(IZ)V

    iput-object v8, v1, Lcom/adobe/internal/xmp/impl/XMPNode;->qualifier:Ljava/util/ArrayList;

    iput-object v8, v11, Lcom/adobe/internal/xmp/impl/XMPNode;->name:Ljava/lang/String;

    goto :goto_18

    :cond_34
    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string v1, "Failure creating xmpMM:InstanceID"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_35
    :goto_18
    invoke-virtual {v11}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v0

    :cond_36
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->hasChildren()Z

    move-result v1

    if-nez v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_19

    :cond_37
    return-object v5

    :cond_38
    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string v1, "Invalid attributes of rdf:RDF element"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_39
    new-instance v0, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    invoke-direct {v0}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;-><init>()V

    return-object v0
.end method

.method public static serializeToBuffer(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;Lcom/adobe/internal/xmp/options/SerializeOptions;)[B
    .locals 10

    instance-of v0, p0, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Lcom/adobe/internal/xmp/options/Options;->getOption(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->sort()V

    :cond_0
    new-instance v1, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->unicodeSize:I

    :try_start_0
    new-instance v2, Lcom/adobe/internal/xmp/impl/CountOutputStream;

    invoke-direct {v2, v0}, Lcom/adobe/internal/xmp/impl/CountOutputStream;-><init>(Ljava/io/ByteArrayOutputStream;)V

    iput-object v2, v1, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->outputStream:Lcom/adobe/internal/xmp/impl/CountOutputStream;

    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, v1, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->outputStream:Lcom/adobe/internal/xmp/impl/CountOutputStream;

    iget v4, p1, Lcom/adobe/internal/xmp/options/Options;->options:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x3

    and-int/2addr v4, v5

    const-string v6, "UTF-8"

    const-string v7, "UTF-16LE"

    const-string v8, "UTF-16BE"

    const/4 v9, 0x2

    if-ne v4, v9, :cond_1

    move-object v4, v8

    goto :goto_0

    :cond_1
    if-ne v4, v5, :cond_2

    move-object v4, v7

    goto :goto_0

    :cond_2
    move-object v4, v6

    :goto_0
    :try_start_1
    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    iput-object p0, v1, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->xmp:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    iput-object p1, v1, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/internal/xmp/options/SerializeOptions;

    iget p0, p1, Lcom/adobe/internal/xmp/options/SerializeOptions;->padding:I

    iput p0, v1, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->padding:I

    new-instance p0, Ljava/io/OutputStreamWriter;

    iget-object v2, v1, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->outputStream:Lcom/adobe/internal/xmp/impl/CountOutputStream;

    iget p1, p1, Lcom/adobe/internal/xmp/options/Options;->options:I

    and-int/2addr p1, v5

    if-ne p1, v9, :cond_3

    move-object v6, v8

    goto :goto_1

    :cond_3
    if-ne p1, v5, :cond_4

    move-object v6, v7

    :cond_4
    :goto_1
    invoke-direct {p0, v2, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object p0, v1, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->checkOptionsConsistence()V

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->serializeAsRDF()Ljava/lang/String;

    move-result-object p0

    iget-object p1, v1, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->addPadding(I)V

    invoke-virtual {v1, p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    iget-object p0, v1, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Ljava/io/OutputStreamWriter;->flush()V

    iget-object p0, v1, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->outputStream:Lcom/adobe/internal/xmp/impl/CountOutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string p1, "Error writing to the OutputStream"

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "The serializing service works onlywith the XMPMeta implementation of this library"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
