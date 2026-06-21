.class public final Lcom/adobe/internal/xmp/impl/XMPMetaImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public tree:Lcom/adobe/internal/xmp/impl/XMPNode;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/adobe/internal/xmp/impl/XMPNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/adobe/internal/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    iput-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/internal/xmp/impl/XMPNode;

    return-void
.end method

.method public static setNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V
    .locals 12

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v0

    iget v1, v0, Lcom/adobe/internal/xmp/options/Options;->options:I

    iget v2, p2, Lcom/adobe/internal/xmp/options/Options;->options:I

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/adobe/internal/xmp/options/Options;->assertOptionsValid(I)V

    iput v1, v0, Lcom/adobe/internal/xmp/options/Options;->options:I

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v0

    iget v0, v0, Lcom/adobe/internal/xmp/options/Options;->options:I

    and-int/lit16 v0, v0, 0x1f00

    const/4 v1, 0x0

    if-nez v0, :cond_11

    const/4 p2, 0x0

    if-nez p1, :cond_0

    move-object p1, v1

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "True"

    goto/16 :goto_2

    :cond_1
    const-string p1, "False"

    goto/16 :goto_2

    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :cond_4
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :cond_5
    instance-of v0, p1, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;

    invoke-static {p1}, Lcom/adobe/internal/xmp/impl/ISO8601Converter;->render(Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :cond_6
    instance-of v0, p1, Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/util/GregorianCalendar;

    sget v0, Lcom/adobe/internal/xmp/XMPDateTimeFactory;->$r8$clinit:I

    new-instance v0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;

    invoke-direct {v0, p1}, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;-><init>(Ljava/util/GregorianCalendar;)V

    invoke-static {v0}, Lcom/adobe/internal/xmp/impl/ISO8601Converter;->render(Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :cond_7
    instance-of v0, p1, [B

    if-eqz v0, :cond_b

    check-cast p1, [B

    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/adobe/internal/xmp/impl/Base64;->base64:[B

    array-length v3, p1

    const/4 v4, 0x2

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B

    move v5, p2

    move v6, v5

    :goto_0
    add-int/lit8 v7, v5, 0x3

    array-length v8, p1

    const v9, 0x3f000

    const/high16 v10, 0xfc0000

    if-gt v7, v8, :cond_8

    add-int/lit8 v8, v5, 0x1

    aget-byte v11, p1, v5

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    add-int/lit8 v5, v5, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v8, v11

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v8

    and-int v8, v5, v10

    shr-int/lit8 v8, v8, 0x12

    add-int/lit8 v10, v6, 0x1

    aget-byte v8, v2, v8

    aput-byte v8, v3, v6

    and-int v8, v5, v9

    shr-int/lit8 v8, v8, 0xc

    add-int/lit8 v9, v6, 0x2

    aget-byte v8, v2, v8

    aput-byte v8, v3, v10

    and-int/lit16 v8, v5, 0xfc0

    shr-int/lit8 v8, v8, 0x6

    add-int/lit8 v10, v6, 0x3

    aget-byte v8, v2, v8

    aput-byte v8, v3, v9

    and-int/lit8 v5, v5, 0x3f

    add-int/lit8 v6, v6, 0x4

    aget-byte v5, v2, v5

    aput-byte v5, v3, v10

    move v5, v7

    goto :goto_0

    :cond_8
    array-length v7, p1

    sub-int/2addr v7, v5

    const/4 v8, 0x1

    const/16 v11, 0x3d

    if-ne v7, v4, :cond_9

    aget-byte v4, p1, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v5, v8

    aget-byte p1, p1, v5

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v4

    and-int v4, p1, v10

    shr-int/lit8 v4, v4, 0x12

    add-int/lit8 v5, v6, 0x1

    aget-byte v4, v2, v4

    aput-byte v4, v3, v6

    and-int v4, p1, v9

    shr-int/lit8 v4, v4, 0xc

    add-int/lit8 v7, v6, 0x2

    aget-byte v4, v2, v4

    aput-byte v4, v3, v5

    and-int/lit16 p1, p1, 0xfc0

    shr-int/lit8 p1, p1, 0x6

    add-int/lit8 v6, v6, 0x3

    aget-byte p1, v2, p1

    aput-byte p1, v3, v7

    aput-byte v11, v3, v6

    goto :goto_1

    :cond_9
    array-length v4, p1

    sub-int/2addr v4, v5

    if-ne v4, v8, :cond_a

    aget-byte p1, p1, v5

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    and-int v4, p1, v10

    shr-int/lit8 v4, v4, 0x12

    add-int/lit8 v5, v6, 0x1

    aget-byte v4, v2, v4

    aput-byte v4, v3, v6

    and-int/2addr p1, v9

    shr-int/lit8 p1, p1, 0xc

    add-int/lit8 v4, v6, 0x2

    aget-byte p1, v2, p1

    aput-byte p1, v3, v5

    add-int/lit8 v6, v6, 0x3

    aput-byte v11, v3, v4

    aput-byte v11, v3, v6

    :cond_a
    :goto_1
    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    move-object p1, v0

    goto :goto_2

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    const/16 v0, 0x20

    if-eqz p1, :cond_e

    sget-object v1, Lcom/adobe/internal/xmp/impl/Utils;->xmlNameStartChars:[Z

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-ge p2, p1, :cond_d

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lcom/adobe/internal/xmp/impl/Utils;->isControlChar(C)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {v1, p2, v0}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_d
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_e
    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/adobe/internal/xmp/options/Options;->getOption(I)Z

    move-result p1

    if-eqz p1, :cond_10

    const-string/jumbo p1, "xml:lang"

    iget-object p2, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_4

    :cond_f
    invoke-static {v1}, Lcom/adobe/internal/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    return-void

    :cond_10
    :goto_4
    iput-object v1, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    return-void

    :cond_11
    const/16 v0, 0x66

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_12

    goto :goto_5

    :cond_12
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string p1, "Composite nodes can\'t have values"

    invoke-direct {p0, p1, v0}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_13
    :goto_5
    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object p1

    iget p1, p1, Lcom/adobe/internal/xmp/options/Options;->options:I

    and-int/lit16 p1, p1, 0x1f00

    if-eqz p1, :cond_15

    iget p1, p2, Lcom/adobe/internal/xmp/options/Options;->options:I

    and-int/lit16 p1, p1, 0x1f00

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object p2

    iget p2, p2, Lcom/adobe/internal/xmp/options/Options;->options:I

    and-int/lit16 p2, p2, 0x1f00

    if-ne p1, p2, :cond_14

    goto :goto_6

    :cond_14
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string p1, "Requested and existing composite form mismatch"

    invoke-direct {p0, p1, v0}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_15
    :goto_6
    iput-object v1, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->children:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final appendArrayItem(Lcom/adobe/internal/xmp/options/PropertyOptions;Lcom/adobe/internal/xmp/options/PropertyOptions;)V
    .locals 7

    iget-object p0, p0, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/internal/xmp/impl/XMPNode;

    const-string v0, "http://ns.google.com/photos/1.0/container/"

    invoke-static {v0}, Lcom/adobe/internal/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    const-string v1, "Directory"

    invoke-static {v1}, Lcom/adobe/internal/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    iget v2, p1, Lcom/adobe/internal/xmp/options/Options;->options:I

    and-int/lit16 v2, v2, -0x1e01

    const/16 v3, 0x67

    if-nez v2, :cond_5

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->verifySetOptions(Lcom/adobe/internal/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object p1

    invoke-static {v0, v1}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/zza;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/internal/xmp/impl/XMPNode;Lcom/google/android/gms/tasks/zza;ZLcom/adobe/internal/xmp/options/PropertyOptions;)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v1

    const/4 v4, 0x1

    const/16 v5, 0x66

    const/16 v6, 0x200

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/adobe/internal/xmp/options/Options;->getOption(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string p1, "The named property is not an array"

    invoke-direct {p0, p1, v5}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    invoke-virtual {p1, v6}, Lcom/adobe/internal/xmp/options/Options;->getOption(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0, v0, v4, p1}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/internal/xmp/impl/XMPNode;Lcom/google/android/gms/tasks/zza;ZLcom/adobe/internal/xmp/options/PropertyOptions;)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v1

    if-eqz v1, :cond_3

    :goto_0
    new-instance p0, Lcom/adobe/internal/xmp/impl/XMPNode;

    const-string p1, "[]"

    invoke-direct {p0, p1, v2, v2}, Lcom/adobe/internal/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    const-string p1, ""

    invoke-static {p2, p1}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->verifySetOptions(Lcom/adobe/internal/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object p2

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v0

    add-int/2addr v0, v4

    if-gt v4, v0, :cond_2

    invoke-virtual {v1, v0, p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->addChild(ILcom/adobe/internal/xmp/impl/XMPNode;)V

    invoke-static {p0, p1, p2}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    return-void

    :cond_2
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string p1, "Array index out of bounds"

    const/16 p2, 0x68

    invoke-direct {p0, p1, p2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_3
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string p1, "Failure creating array node"

    invoke-direct {p0, p1, v5}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_4
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string p1, "Explicit arrayOptions required to create new array"

    invoke-direct {p0, p1, v3}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_5
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string p1, "Only array form flags allowed for arrayOptions"

    invoke-direct {p0, p1, v3}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->clone()Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object p0

    new-instance v0, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/internal/xmp/impl/XMPNode;

    return-object v0
.end method

.method public final setLocalizedText(Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p1

    const-string v1, "http://purl.org/dc/elements/1.1/"

    invoke-static {v1}, Lcom/adobe/internal/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    const-string/jumbo v2, "rights"

    invoke-static {v2}, Lcom/adobe/internal/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    const-string v3, ""

    invoke-static {v3}, Lcom/adobe/internal/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "x-default"

    invoke-static {v4}, Lcom/adobe/internal/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/zza;

    move-result-object v1

    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/internal/xmp/impl/XMPNode;

    new-instance v6, Lcom/adobe/internal/xmp/options/PropertyOptions;

    const/16 v7, 0x1e00

    invoke-direct {v6, v7}, Lcom/adobe/internal/xmp/options/PropertyOptions;-><init>(I)V

    const/4 v7, 0x1

    invoke-static {v2, v1, v7, v6}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/internal/xmp/impl/XMPNode;Lcom/google/android/gms/tasks/zza;ZLcom/adobe/internal/xmp/options/PropertyOptions;)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v1

    const/16 v2, 0x66

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v6

    const/16 v8, 0x1000

    invoke-virtual {v6, v8}, Lcom/adobe/internal/xmp/options/Options;->getOption(I)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->hasChildren()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v6

    const/16 v9, 0x800

    invoke-virtual {v6, v9}, Lcom/adobe/internal/xmp/options/Options;->getOption(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v6

    invoke-virtual {v6, v8, v7}, Lcom/adobe/internal/xmp/options/Options;->setOption(IZ)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string v1, "Specified property is no alt-text array"

    invoke-direct {v0, v1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string/jumbo v10, "xml:lang"

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v9, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-virtual {v9}, Lcom/adobe/internal/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v9, v7}, Lcom/adobe/internal/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v13

    iget-object v13, v13, Lcom/adobe/internal/xmp/impl/XMPNode;->name:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v9, v7}, Lcom/adobe/internal/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v13

    iget-object v13, v13, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move v6, v7

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string v1, "Language qualifier must be first"

    invoke-direct {v0, v1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_4
    move v6, v11

    move-object v9, v12

    :goto_1
    if-eqz v9, :cond_6

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v13

    if-le v13, v7, :cond_6

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChildren()Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v13, v1, Lcom/adobe/internal/xmp/impl/XMPNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_5

    iput-object v12, v1, Lcom/adobe/internal/xmp/impl/XMPNode;->children:Ljava/util/ArrayList;

    :cond_5
    invoke-virtual {v1, v7, v9}, Lcom/adobe/internal/xmp/impl/XMPNode;->addChild(ILcom/adobe/internal/xmp/impl/XMPNode;)V

    :cond_6
    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v13

    invoke-virtual {v13, v8}, Lcom/adobe/internal/xmp/options/Options;->getOption(I)Z

    move-result v8

    if-eqz v8, :cond_23

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->hasChildren()Z

    move-result v8

    if-nez v8, :cond_7

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v11}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {v2, v12}, [Ljava/lang/Object;

    move-result-object v2

    move/from16 v16, v11

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v8

    move/from16 v16, v11

    move-object v13, v12

    :cond_8
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v14, v17

    check-cast v14, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-virtual {v14}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v17

    if-nez v17, :cond_d

    invoke-virtual {v14}, Lcom/adobe/internal/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-virtual {v14, v7}, Lcom/adobe/internal/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v15

    iget-object v15, v15, Lcom/adobe/internal/xmp/impl/XMPNode;->name:Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-virtual {v14, v7}, Lcom/adobe/internal/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v15

    iget-object v15, v15, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {v2, v14}, [Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_9
    if-eqz v3, :cond_b

    invoke-virtual {v15, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    if-nez v12, :cond_a

    move-object v12, v14

    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_b
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    move-object v13, v14

    goto :goto_2

    :cond_c
    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string v1, "Alt-text array item has no language qualifier"

    invoke-direct {v0, v1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_d
    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string v1, "Alt-text array item is not simple"

    invoke-direct {v0, v1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_e
    if-ne v11, v7, :cond_f

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {v2, v12}, [Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_f
    if-le v11, v7, :cond_10

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {v2, v12}, [Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_10
    if-eqz v13, :cond_11

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {v2, v13}, [Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_11
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v7}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    :goto_3
    aget-object v3, v2, v16

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v7

    check-cast v2, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v3, :cond_20

    if-eq v3, v7, :cond_19

    const/4 v10, 0x2

    if-eq v3, v10, :cond_17

    const/4 v10, 0x3

    if-eq v3, v10, :cond_16

    const/4 v2, 0x4

    if-eq v3, v2, :cond_14

    const/4 v2, 0x5

    if-ne v3, v2, :cond_13

    invoke-static {v1, v5, v0}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_21

    :cond_12
    :goto_4
    move v6, v7

    goto/16 :goto_7

    :cond_13
    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string v1, "Unexpected result from ChooseLocalizedText"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_14
    if-eqz v9, :cond_15

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v2

    if-ne v2, v7, :cond_15

    iput-object v0, v9, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    :cond_15
    invoke-static {v1, v5, v0}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_16
    invoke-static {v1, v5, v0}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_21

    goto :goto_4

    :cond_17
    if-eqz v6, :cond_18

    if-eq v9, v2, :cond_18

    if-eqz v9, :cond_18

    iget-object v3, v9, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    iget-object v5, v2, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    iput-object v0, v9, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    :cond_18
    iput-object v0, v2, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    goto :goto_7

    :cond_19
    if-nez v8, :cond_1b

    if-eqz v6, :cond_1a

    if-eq v9, v2, :cond_1a

    if-eqz v9, :cond_1a

    iget-object v3, v9, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    iget-object v5, v2, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    iput-object v0, v9, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    :cond_1a
    iput-object v0, v2, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    goto :goto_7

    :cond_1b
    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/internal/xmp/impl/XMPNode;

    if-eq v3, v9, :cond_1c

    iget-object v5, v3, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    if-eqz v9, :cond_1d

    iget-object v8, v9, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    goto :goto_6

    :cond_1d
    const/4 v8, 0x0

    :goto_6
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    goto :goto_5

    :cond_1e
    iput-object v0, v3, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    goto :goto_5

    :cond_1f
    if-eqz v9, :cond_21

    iput-object v0, v9, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    goto :goto_7

    :cond_20
    invoke-static {v1, v4, v0}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v8, :cond_12

    invoke-static {v1, v5, v0}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_21
    :goto_7
    if-nez v6, :cond_22

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v2

    if-ne v2, v7, :cond_22

    invoke-static {v1, v4, v0}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    return-void

    :cond_23
    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string v1, "Localized text array is not alt-text"

    invoke-direct {v0, v1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_24
    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string v1, "Failed to find or create array node"

    invoke-direct {v0, v1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V
    .locals 0

    invoke-static {p1}, Lcom/adobe/internal/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/adobe/internal/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    invoke-static {p4, p3}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->verifySetOptions(Lcom/adobe/internal/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object p4

    invoke-static {p1, p2}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/zza;

    move-result-object p1

    iget-object p0, p0, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/internal/xmp/impl/XMPNode;

    const/4 p2, 0x1

    invoke-static {p0, p1, p2, p4}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/internal/xmp/impl/XMPNode;Lcom/google/android/gms/tasks/zza;ZLcom/adobe/internal/xmp/options/PropertyOptions;)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p3, p4}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    return-void

    :cond_0
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string p1, "Specified property does not exist"

    const/16 p2, 0x66

    invoke-direct {p0, p1, p2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public final setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "http://ns.google.com/photos/1.0/container/"

    invoke-static {v0}, Lcom/adobe/internal/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x66

    if-eqz v1, :cond_1

    const-string v1, "http://ns.google.com/photos/1.0/container/item/"

    invoke-static {v1, p2}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/zza;

    move-result-object p2

    iget-object v1, p2, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/google/android/gms/tasks/zza;->getSegment(I)Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;

    move-result-object p2

    iget-object p2, p2, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p1, p3, p2}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    return-void

    :cond_0
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string p1, "The field name must be simple"

    invoke-direct {p0, p1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string p1, "Empty f name"

    invoke-direct {p0, p1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_2
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string p1, "Empty array name"

    const/4 p2, 0x4

    invoke-direct {p0, p1, p2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method
