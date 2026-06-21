.class public final Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public density:Landroidx/compose/ui/unit/Density;

.field public didOverflow:Z

.field public fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

.field public intrinsicsLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field public lastDensity:J

.field public layoutSize:J

.field public mMinLinesConstrainer:Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;

.field public maxLines:I

.field public minLines:I

.field public overflow:I

.field public paragraph:Landroidx/compose/ui/text/AndroidParagraph;

.field public paragraphIntrinsics:Landroidx/compose/ui/text/ParagraphIntrinsics;

.field public prevConstraints:J

.field public softWrap:Z

.field public style:Landroidx/compose/ui/text/TextStyle;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->text:Ljava/lang/String;

    iput-object p2, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->style:Landroidx/compose/ui/text/TextStyle;

    iput-object p3, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iput p4, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->overflow:I

    iput-boolean p5, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->softWrap:Z

    iput p6, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->maxLines:I

    iput p7, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->minLines:I

    sget-wide p1, Landroidx/compose/foundation/text/modifiers/InlineDensity;->Unspecified:J

    iput-wide p1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->lastDensity:J

    const/4 p1, 0x0

    int-to-long p2, p1

    const/16 p4, 0x20

    shl-long p4, p2, p4

    const-wide p6, 0xffffffffL

    and-long/2addr p2, p6

    or-long/2addr p2, p4

    iput-wide p2, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->layoutSize:J

    invoke-static {p1, p1, p1, p1}, Landroidx/compose/ui/unit/ConstraintsKt;->createConstraints(IIII)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->prevConstraints:J

    return-void
.end method


# virtual methods
.method public final markDirty()V
    .locals 7

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->paragraphIntrinsics:Landroidx/compose/ui/text/ParagraphIntrinsics;

    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->intrinsicsLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->createConstraints(IIII)J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->prevConstraints:J

    int-to-long v1, v0

    const/16 v3, 0x20

    shl-long v3, v1, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v1, v5

    or-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->layoutSize:J

    iput-boolean v0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->didOverflow:Z

    return-void
.end method

.method public final setDensity$foundation_release(Landroidx/compose/ui/unit/Density;)V
    .locals 5

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->density:Landroidx/compose/ui/unit/Density;

    if-eqz p1, :cond_0

    sget v1, Landroidx/compose/foundation/text/modifiers/InlineDensity;->$r8$clinit:I

    invoke-interface {p1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v1

    invoke-interface {p1}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    move-result v2

    invoke-static {v1, v2}, Landroidx/compose/foundation/text/modifiers/InlineDensity;->constructor-impl(FF)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    sget-wide v1, Landroidx/compose/foundation/text/modifiers/InlineDensity;->Unspecified:J

    :goto_0
    if-nez v0, :cond_1

    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->density:Landroidx/compose/ui/unit/Density;

    iput-wide v1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->lastDensity:J

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-wide v3, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->lastDensity:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    return-void

    :cond_2
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->density:Landroidx/compose/ui/unit/Density;

    iput-wide v1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->lastDensity:J

    invoke-virtual {p0}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->markDirty()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ParagraphLayoutCache(paragraph="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    if-eqz v1, :cond_0

    const-string v1, "<paragraph>"

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastDensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->lastDensity:J

    sget p0, Landroidx/compose/foundation/text/modifiers/InlineDensity;->$r8$clinit:I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "InlineDensity(density="

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    shr-long v3, v1, v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", fontScale="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
