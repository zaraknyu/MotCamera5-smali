.class public final Landroidx/compose/ui/text/MultiParagraph;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final didExceedMaxLines:Z

.field public final height:F

.field public final intrinsics:Lcom/motorola/camera/AppFeatures;

.field public final lineCount:I

.field public final maxLines:I

.field public final paragraphInfoList:Ljava/util/ArrayList;

.field public final placeholderRects:Ljava/util/ArrayList;

.field public final width:F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/AppFeatures;JII)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroidx/compose/ui/text/MultiParagraph;->intrinsics:Lcom/motorola/camera/AppFeatures;

    move/from16 v2, p4

    iput v2, v0, Landroidx/compose/ui/text/MultiParagraph;->maxLines:I

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "Setting Constraints.minWidth and Constraints.minHeight is not supported, these should be the default zero values instead."

    invoke-static {v2}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_1
    if-ge v6, v3, :cond_5

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;

    iget-object v15, v7, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->intrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v8

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedHeight-impl(J)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v9

    const/16 p1, 0x0

    float-to-double v4, v13

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-int v4, v4

    sub-int/2addr v9, v4

    if-gez v9, :cond_2

    const/4 v9, 0x0

    goto :goto_2

    :cond_1
    const/16 p1, 0x0

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v9

    :cond_2
    :goto_2
    const/4 v4, 0x5

    invoke-static {v8, v9, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(III)J

    move-result-wide v18

    iget v4, v0, Landroidx/compose/ui/text/MultiParagraph;->maxLines:I

    sub-int v16, v4, v11

    new-instance v14, Landroidx/compose/ui/text/AndroidParagraph;

    move/from16 v17, p5

    invoke-direct/range {v14 .. v19}, Landroidx/compose/ui/text/AndroidParagraph;-><init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IIJ)V

    invoke-virtual {v14}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    move-result v4

    add-float/2addr v4, v13

    iget-object v5, v14, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    iget v8, v5, Landroidx/compose/ui/text/android/TextLayout;->lineCount:I

    add-int v12, v11, v8

    new-instance v8, Landroidx/compose/ui/text/ParagraphInfo;

    iget v9, v7, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->startIndex:I

    iget v10, v7, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->endIndex:I

    move-object v7, v8

    move-object v8, v14

    move v14, v4

    invoke-direct/range {v7 .. v14}, Landroidx/compose/ui/text/ParagraphInfo;-><init>(Landroidx/compose/ui/text/AndroidParagraph;IIIIFF)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v4, v5, Landroidx/compose/ui/text/android/TextLayout;->didExceedMaxLines:Z

    if-nez v4, :cond_4

    iget v4, v0, Landroidx/compose/ui/text/MultiParagraph;->maxLines:I

    if-ne v12, v4, :cond_3

    iget-object v4, v0, Landroidx/compose/ui/text/MultiParagraph;->intrinsics:Lcom/motorola/camera/AppFeatures;

    iget-object v4, v4, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v4

    if-eq v6, v4, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    move v11, v12

    move v13, v14

    goto :goto_1

    :cond_4
    :goto_3
    const/4 v1, 0x1

    move v11, v12

    move v13, v14

    goto :goto_4

    :cond_5
    const/16 p1, 0x0

    const/4 v1, 0x0

    :goto_4
    iput v13, v0, Landroidx/compose/ui/text/MultiParagraph;->height:F

    iput v11, v0, Landroidx/compose/ui/text/MultiParagraph;->lineCount:I

    iput-boolean v1, v0, Landroidx/compose/ui/text/MultiParagraph;->didExceedMaxLines:Z

    iput-object v2, v0, Landroidx/compose/ui/text/MultiParagraph;->paragraphInfoList:Ljava/util/ArrayList;

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroidx/compose/ui/text/MultiParagraph;->width:F

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_8

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/text/ParagraphInfo;

    iget-object v7, v6, Landroidx/compose/ui/text/ParagraphInfo;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    iget-object v7, v7, Landroidx/compose/ui/text/AndroidParagraph;->placeholderRects:Ljava/lang/Object;

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v9, :cond_7

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/geometry/Rect;

    if-eqz v11, :cond_6

    iget v12, v6, Landroidx/compose/ui/text/ParagraphInfo;->top:F

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v13

    int-to-long v13, v13

    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v12

    move-object/from16 p3, v6

    int-to-long v5, v12

    const/16 v12, 0x20

    shl-long v12, v13, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v5, v14

    or-long/2addr v5, v12

    invoke-virtual {v11, v5, v6}, Landroidx/compose/ui/geometry/Rect;->translate-k-4lQ0M(J)Landroidx/compose/ui/geometry/Rect;

    move-result-object v5

    goto :goto_7

    :cond_6
    move-object/from16 p3, v6

    const/4 v5, 0x0

    :goto_7
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v6, p3

    goto :goto_6

    :cond_7
    invoke-static {v1, v8}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v0, Landroidx/compose/ui/text/MultiParagraph;->intrinsics:Lcom/motorola/camera/AppFeatures;

    iget-object v3, v3, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    iget-object v2, v0, Landroidx/compose/ui/text/MultiParagraph;->intrinsics:Lcom/motorola/camera/AppFeatures;

    iget-object v2, v2, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v2, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v2, :cond_9

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_9
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    :cond_a
    iput-object v1, v0, Landroidx/compose/ui/text/MultiParagraph;->placeholderRects:Ljava/util/ArrayList;

    return-void
.end method

.method public static paint-hn5TExg$default(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V
    .locals 8

    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->save()V

    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->paragraphInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    invoke-static/range {p0 .. p6}, Lkotlin/uuid/UuidKt;->drawParagraphs-7AXcY_I(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    goto/16 :goto_2

    :cond_0
    instance-of v1, p2, Landroidx/compose/ui/graphics/SolidColor;

    if-eqz v1, :cond_1

    invoke-static/range {p0 .. p6}, Lkotlin/uuid/UuidKt;->drawParagraphs-7AXcY_I(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    goto :goto_2

    :cond_1
    instance-of p0, p2, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v3, p0, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/text/ParagraphInfo;

    iget-object v7, v6, Landroidx/compose/ui/text/ParagraphInfo;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    invoke-virtual {v7}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    move-result v7

    add-float/2addr v5, v7

    iget-object v6, v6, Landroidx/compose/ui/text/ParagraphInfo;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    invoke-virtual {v6}, Landroidx/compose/ui/text/AndroidParagraph;->getWidth()F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    check-cast p2, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    iget-object v3, p2, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;->$shader:Landroid/graphics/Shader;

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v3, v4}, Landroid/graphics/Shader;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_1
    if-ge v1, v5, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/ParagraphInfo;

    iget-object p0, p0, Landroidx/compose/ui/text/ParagraphInfo;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    new-instance p2, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;

    invoke-direct {p2, v3}, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;-><init>(Landroid/graphics/Shader;)V

    invoke-virtual/range {p0 .. p6}, Landroidx/compose/ui/text/AndroidParagraph;->paint-hn5TExg(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    move-result p2

    invoke-interface {p1, v2, p2}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    move-result p0

    neg-float p0, p0

    invoke-virtual {v4, v2, p0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {v3, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method public final requireLineIndexInRange(I)V
    .locals 2

    const/4 v0, 0x0

    iget p0, p0, Landroidx/compose/ui/text/MultiParagraph;->lineCount:I

    if-ltz p1, :cond_0

    if-ge p1, p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lineIndex("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is out of bounds [0, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
