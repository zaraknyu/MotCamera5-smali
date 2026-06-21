.class public final Landroidx/compose/ui/text/MultiParagraph$getPathForRange$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $end:I

.field public final synthetic $path:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic $start:I


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/AndroidPath;II)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/ui/text/MultiParagraph$getPathForRange$2;->$r8$classId:I

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/text/MultiParagraph$getPathForRange$2;->$path:Ljava/lang/Object;

    iput p2, p0, Landroidx/compose/ui/text/MultiParagraph$getPathForRange$2;->$start:I

    iput p3, p0, Landroidx/compose/ui/text/MultiParagraph$getPathForRange$2;->$end:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>([Landroidx/compose/ui/layout/Placeable;Landroidx/compose/animation/AnimatedContentMeasurePolicy;II)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, Landroidx/compose/ui/text/MultiParagraph$getPathForRange$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/compose/ui/text/MultiParagraph$getPathForRange$2;->$path:Ljava/lang/Object;

    iput p3, p0, Landroidx/compose/ui/text/MultiParagraph$getPathForRange$2;->$start:I

    iput p4, p0, Landroidx/compose/ui/text/MultiParagraph$getPathForRange$2;->$end:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/compose/ui/text/MultiParagraph$getPathForRange$2;->$r8$classId:I

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget v3, v0, Landroidx/compose/ui/text/MultiParagraph$getPathForRange$2;->$end:I

    iget v4, v0, Landroidx/compose/ui/text/MultiParagraph$getPathForRange$2;->$start:I

    iget-object v0, v0, Landroidx/compose/ui/text/MultiParagraph$getPathForRange$2;->$path:Ljava/lang/Object;

    const/16 v5, 0x20

    const-wide v6, 0xffffffffL

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    check-cast v0, [Landroidx/compose/ui/layout/Placeable;

    array-length v8, v0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_1

    aget-object v10, v0, v9

    if-eqz v10, :cond_0

    iget v11, v10, Landroidx/compose/ui/layout/Placeable;->width:I

    iget v12, v10, Landroidx/compose/ui/layout/Placeable;->height:I

    int-to-long v13, v11

    shl-long/2addr v13, v5

    int-to-long v11, v12

    and-long/2addr v11, v6

    or-long/2addr v11, v13

    int-to-long v13, v4

    shl-long/2addr v13, v5

    move/from16 p0, v5

    move-wide v15, v6

    int-to-long v5, v3

    and-long/2addr v5, v15

    or-long/2addr v5, v13

    sget-object v7, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    shr-long v13, v5, p0

    long-to-int v7, v13

    shr-long v13, v11, p0

    long-to-int v13, v13

    sub-int/2addr v7, v13

    int-to-float v7, v7

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v7, v13

    and-long/2addr v5, v15

    long-to-int v5, v5

    and-long/2addr v11, v15

    long-to-int v6, v11

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v13

    sget-object v6, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    const/4 v6, 0x1

    int-to-float v6, v6

    const/high16 v11, -0x40800000    # -1.0f

    add-float v12, v6, v11

    mul-float/2addr v12, v7

    add-float/2addr v6, v11

    mul-float/2addr v6, v5

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-long v11, v5

    shl-long v11, v11, p0

    int-to-long v5, v6

    and-long/2addr v5, v15

    or-long/2addr v5, v11

    shr-long v11, v5, p0

    long-to-int v7, v11

    and-long/2addr v5, v15

    long-to-int v5, v5

    invoke-static {v1, v10, v7, v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    goto :goto_1

    :cond_0
    move/from16 p0, v5

    move-wide v15, v6

    :goto_1
    add-int/lit8 v9, v9, 0x1

    move/from16 v5, p0

    move-wide v6, v15

    goto :goto_0

    :cond_1
    return-object v2

    :pswitch_0
    move/from16 p0, v5

    move-wide v15, v6

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/text/ParagraphInfo;

    check-cast v0, Landroidx/compose/ui/graphics/AndroidPath;

    iget-object v5, v1, Landroidx/compose/ui/text/ParagraphInfo;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    invoke-virtual {v1, v4}, Landroidx/compose/ui/text/ParagraphInfo;->toLocalIndex(I)I

    move-result v4

    invoke-virtual {v1, v3}, Landroidx/compose/ui/text/ParagraphInfo;->toLocalIndex(I)I

    move-result v3

    iget-object v6, v5, Landroidx/compose/ui/text/AndroidParagraph;->charSequence:Ljava/lang/CharSequence;

    if-ltz v4, :cond_2

    if-gt v4, v3, :cond_2

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-gt v3, v7, :cond_2

    goto :goto_2

    :cond_2
    const-string v7, ") or end("

    const-string v8, ") is out of range [0.."

    const-string/jumbo v9, "start("

    invoke-static {v4, v3, v9, v7, v8}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "], or start > end!"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_2
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iget-object v5, v5, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    iget-object v7, v5, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v7, v4, v3, v6}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    iget v3, v5, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v6}, Landroid/graphics/Path;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    int-to-float v3, v3

    invoke-virtual {v6, v4, v3}, Landroid/graphics/Path;->offset(FF)V

    :cond_3
    iget v1, v1, Landroidx/compose/ui/text/ParagraphInfo;->top:F

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v7, v1

    shl-long v3, v3, p0

    and-long/2addr v7, v15

    or-long/2addr v3, v7

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    shr-long v7, v3, p0

    long-to-int v5, v7

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    and-long/2addr v3, v15

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {v6, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, v0, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    const-wide/16 v3, 0x0

    long-to-int v1, v3

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {v0, v6, v3, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;FF)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
