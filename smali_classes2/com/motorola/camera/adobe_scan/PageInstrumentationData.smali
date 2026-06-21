.class final Lcom/motorola/camera/adobe_scan/PageInstrumentationData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u001c\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0083\u0008\u0018\u00002\u00020\u0001BC\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003JE\u0010\u001e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\"\u001a\u00020\u0003H\u00d6\u0001J\t\u0010#\u001a\u00020$H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000c\"\u0004\u0008\u0010\u0010\u000eR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000c\"\u0004\u0008\u0012\u0010\u000eR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000c\"\u0004\u0008\u0014\u0010\u000eR\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u000c\"\u0004\u0008\u0016\u0010\u000eR\u001a\u0010\u0008\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\u000c\"\u0004\u0008\u0017\u0010\u000e\u00a8\u0006%"
    }
    d2 = {
        "Lcom/motorola/camera/adobe_scan/PageInstrumentationData;",
        "",
        "toolbarCrop",
        "",
        "toolbarRotate",
        "toolbarFilter",
        "toolbarMarkup",
        "toolbarCleanup",
        "isAutoCapture",
        "<init>",
        "(IIIIII)V",
        "getToolbarCrop",
        "()I",
        "setToolbarCrop",
        "(I)V",
        "getToolbarRotate",
        "setToolbarRotate",
        "getToolbarFilter",
        "setToolbarFilter",
        "getToolbarMarkup",
        "setToolbarMarkup",
        "getToolbarCleanup",
        "setToolbarCleanup",
        "setAutoCapture",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "feature_adobe_scan_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private isAutoCapture:I

.field private toolbarCleanup:I

.field private toolbarCrop:I

.field private toolbarFilter:I

.field private toolbarMarkup:I

.field private toolbarRotate:I


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;-><init>(IIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarCrop:I

    .line 4
    iput p2, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarRotate:I

    .line 5
    iput p3, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarFilter:I

    .line 6
    iput p4, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarMarkup:I

    .line 7
    iput p5, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarCleanup:I

    .line 8
    iput p6, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->isAutoCapture:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    move p6, v0

    .line 9
    :cond_5
    invoke-direct/range {p0 .. p6}, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;-><init>(IIIIII)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/motorola/camera/adobe_scan/PageInstrumentationData;IIIIIIILjava/lang/Object;)Lcom/motorola/camera/adobe_scan/PageInstrumentationData;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget p1, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarCrop:I

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarRotate:I

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget p3, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarFilter:I

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget p4, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarMarkup:I

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget p5, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarCleanup:I

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget p6, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->isAutoCapture:I

    :cond_5
    move p7, p5

    move p8, p6

    move p5, p3

    move p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->copy(IIIIII)Lcom/motorola/camera/adobe_scan/PageInstrumentationData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarCrop:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarRotate:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarFilter:I

    return p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarMarkup:I

    return p0
.end method

.method public final component5()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarCleanup:I

    return p0
.end method

.method public final component6()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->isAutoCapture:I

    return p0
.end method

.method public final copy(IIIIII)Lcom/motorola/camera/adobe_scan/PageInstrumentationData;
    .locals 0

    new-instance p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;

    invoke-direct/range {p0 .. p6}, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;-><init>(IIIIII)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;

    iget v1, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarCrop:I

    iget v3, p1, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarCrop:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarRotate:I

    iget v3, p1, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarRotate:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarFilter:I

    iget v3, p1, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarFilter:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarMarkup:I

    iget v3, p1, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarMarkup:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarCleanup:I

    iget v3, p1, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarCleanup:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget p0, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->isAutoCapture:I

    iget p1, p1, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->isAutoCapture:I

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getToolbarCleanup()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarCleanup:I

    return p0
.end method

.method public final getToolbarCrop()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarCrop:I

    return p0
.end method

.method public final getToolbarFilter()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarFilter:I

    return p0
.end method

.method public final getToolbarMarkup()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarMarkup:I

    return p0
.end method

.method public final getToolbarRotate()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarRotate:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarCrop:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarRotate:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarFilter:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarMarkup:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarCleanup:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->isAutoCapture:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isAutoCapture()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->isAutoCapture:I

    return p0
.end method

.method public final setAutoCapture(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->isAutoCapture:I

    return-void
.end method

.method public final setToolbarCleanup(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarCleanup:I

    return-void
.end method

.method public final setToolbarCrop(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarCrop:I

    return-void
.end method

.method public final setToolbarFilter(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarFilter:I

    return-void
.end method

.method public final setToolbarMarkup(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarMarkup:I

    return-void
.end method

.method public final setToolbarRotate(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarRotate:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarCrop:I

    iget v1, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarRotate:I

    iget v2, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarFilter:I

    iget v3, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarMarkup:I

    iget v4, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->toolbarCleanup:I

    iget p0, p0, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->isAutoCapture:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "PageInstrumentationData(toolbarCrop="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", toolbarRotate="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", toolbarFilter="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", toolbarMarkup="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", toolbarCleanup="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isAutoCapture="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
