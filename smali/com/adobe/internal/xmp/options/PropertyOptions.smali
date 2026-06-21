.class public final Lcom/adobe/internal/xmp/options/PropertyOptions;
.super Lcom/adobe/internal/xmp/options/Options;
.source "SourceFile"


# instance fields
.field public arrayElementsLimit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/adobe/internal/xmp/options/Options;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/adobe/internal/xmp/options/PropertyOptions;->arrayElementsLimit:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/adobe/internal/xmp/options/Options;-><init>(I)V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/adobe/internal/xmp/options/PropertyOptions;->arrayElementsLimit:I

    return-void
.end method


# virtual methods
.method public final assertConsistency(I)V
    .locals 1

    and-int/lit16 p0, p1, 0x100

    const/16 v0, 0x67

    if-lez p0, :cond_1

    and-int/lit16 p0, p1, 0x200

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string p1, "IsStruct and IsArray options are mutually exclusive"

    invoke-direct {p0, p1, v0}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    :goto_0
    and-int/lit8 p0, p1, 0x2

    if-lez p0, :cond_3

    and-int/lit16 p0, p1, 0x300

    if-gtz p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string p1, "Structs and arrays can\'t have \"value\" options"

    invoke-direct {p0, p1, v0}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method public final getValidOptions()I
    .locals 0

    const p0, -0x5fffe00e

    return p0
.end method

.method public final isCompositeProperty()Z
    .locals 0

    iget p0, p0, Lcom/adobe/internal/xmp/options/Options;->options:I

    and-int/lit16 p0, p0, 0x300

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setArrayOrdered()V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x400

    invoke-virtual {p0, v1, v0}, Lcom/adobe/internal/xmp/options/Options;->setOption(IZ)V

    return-void
.end method

.method public final setStruct(Z)V
    .locals 1

    const/16 v0, 0x100

    invoke-virtual {p0, v0, p1}, Lcom/adobe/internal/xmp/options/Options;->setOption(IZ)V

    return-void
.end method
