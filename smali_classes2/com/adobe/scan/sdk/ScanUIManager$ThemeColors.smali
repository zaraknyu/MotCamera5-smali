.class public final Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final boundaryDetectorDotInner:J

.field public final boundaryDetectorDotOuter:J

.field public final cropBoundary:J

.field public final previewBackground:J

.field public final progressBar:J

.field public final progressBarTrack:J


# direct methods
.method public constructor <init>(JJJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->previewBackground:J

    iput-wide p3, p0, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->boundaryDetectorDotInner:J

    iput-wide p5, p0, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->boundaryDetectorDotOuter:J

    iput-wide p7, p0, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->cropBoundary:J

    iput-wide p9, p0, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->progressBar:J

    iput-wide p11, p0, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->progressBarTrack:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;

    iget-wide v3, p0, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->previewBackground:J

    iget-wide v5, p1, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->previewBackground:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->boundaryDetectorDotInner:J

    iget-wide v5, p1, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->boundaryDetectorDotInner:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->boundaryDetectorDotOuter:J

    iget-wide v5, p1, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->boundaryDetectorDotOuter:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->cropBoundary:J

    iget-wide v5, p1, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->cropBoundary:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->progressBar:J

    iget-wide v5, p1, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->progressBar:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->progressBarTrack:J

    iget-wide p0, p1, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->progressBarTrack:J

    invoke-static {v3, v4, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    sget v0, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    iget-wide v0, p0, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->previewBackground:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->boundaryDetectorDotInner:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->boundaryDetectorDotOuter:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->cropBoundary:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->progressBar:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->progressBarTrack:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-wide v0, p0, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->previewBackground:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->boundaryDetectorDotInner:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->boundaryDetectorDotOuter:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->cropBoundary:J

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->progressBar:J

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->progressBarTrack:J

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ThemeColors(previewBackground="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", boundaryDetectorDotInner="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", boundaryDetectorDotOuter="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cropBoundary="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", progressBar="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", progressBarTrack="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
