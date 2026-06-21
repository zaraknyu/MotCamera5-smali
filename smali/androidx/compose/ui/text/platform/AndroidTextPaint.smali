.class public final Landroidx/compose/ui/text/platform/AndroidTextPaint;
.super Landroid/text/TextPaint;
.source "SourceFile"


# instance fields
.field public backingBlendMode:I

.field public backingComposePaint:Landroidx/compose/ui/graphics/AndroidPaint;

.field public brush:Landroidx/compose/ui/graphics/Brush;

.field public brushSize:Landroidx/compose/ui/geometry/Size;

.field public drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

.field public lastColor:Landroidx/compose/ui/graphics/Color;

.field public shaderState:Landroidx/compose/runtime/DerivedSnapshotState;

.field public shadow:Landroidx/compose/ui/graphics/Shadow;

.field public textDecoration:Landroidx/compose/ui/text/style/TextDecoration;


# virtual methods
.method public final getComposePaint()Landroidx/compose/ui/graphics/AndroidPaint;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->backingComposePaint:Landroidx/compose/ui/graphics/AndroidPaint;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroidx/compose/ui/graphics/AndroidPaint;

    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/AndroidPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->backingComposePaint:Landroidx/compose/ui/graphics/AndroidPaint;

    return-object v0
.end method

.method public final setBlendMode-s9anfk8(I)V
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->backingBlendMode:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->getComposePaint()Landroidx/compose/ui/graphics/AndroidPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/graphics/AndroidPaint;->setBlendMode-s9anfk8(I)V

    iput p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->backingBlendMode:I

    return-void
.end method

.method public final setBrush-12SF9DM(Landroidx/compose/ui/graphics/Brush;JF)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shaderState:Landroidx/compose/runtime/DerivedSnapshotState;

    iput-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->brush:Landroidx/compose/ui/graphics/Brush;

    iput-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->brushSize:Landroidx/compose/ui/geometry/Size;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/graphics/SolidColor;

    if-eqz v1, :cond_1

    check-cast p1, Landroidx/compose/ui/graphics/SolidColor;

    iget-wide p1, p1, Landroidx/compose/ui/graphics/SolidColor;->value:J

    invoke-static {p4, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt;->modulate-DxMtmZc(FJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setColor-8_81llA(J)V

    return-void

    :cond_1
    instance-of v1, p1, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->brush:Landroidx/compose/ui/graphics/Brush;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->brushSize:Landroidx/compose/ui/geometry/Size;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    iget-wide v3, v1, Landroidx/compose/ui/geometry/Size;->packedValue:J

    invoke-static {v3, v4, p2, p3}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_5

    :cond_3
    const-wide v3, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v1, p2, v3

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    :cond_4
    if-eqz v2, :cond_5

    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->brush:Landroidx/compose/ui/graphics/Brush;

    new-instance v1, Landroidx/compose/ui/geometry/Size;

    invoke-direct {v1, p2, p3}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    iput-object v1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->brushSize:Landroidx/compose/ui/geometry/Size;

    new-instance v1, Landroidx/compose/runtime/Pending$keyMap$2;

    invoke-direct {v1, p1, p2, p3}, Landroidx/compose/runtime/Pending$keyMap$2;-><init>(Landroidx/compose/ui/graphics/Brush;J)V

    invoke-static {v1}, Landroidx/compose/runtime/AnchoredGroupPath;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shaderState:Landroidx/compose/runtime/DerivedSnapshotState;

    :cond_5
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->getComposePaint()Landroidx/compose/ui/graphics/AndroidPaint;

    move-result-object p1

    iget-object p2, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shaderState:Landroidx/compose/runtime/DerivedSnapshotState;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Shader;

    goto :goto_1

    :cond_6
    move-object p2, v0

    :goto_1
    invoke-virtual {p1, p2}, Landroidx/compose/ui/graphics/AndroidPaint;->setShader(Landroid/graphics/Shader;)V

    iput-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->lastColor:Landroidx/compose/ui/graphics/Color;

    invoke-static {p0, p4}, Lkotlinx/coroutines/channels/ActorKt;->setAlpha(Landroid/text/TextPaint;F)V

    :cond_7
    return-void
.end method

.method public final setColor-8_81llA(J)V
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->lastColor:Landroidx/compose/ui/graphics/Color;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-wide v2, v0, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-static {v2, v3, p1, p2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    const-wide/16 v2, 0x10

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    new-instance v0, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    iput-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->lastColor:Landroidx/compose/ui/graphics/Color;

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Brush;->toArgb-8_81llA(J)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shaderState:Landroidx/compose/runtime/DerivedSnapshotState;

    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->brush:Landroidx/compose/ui/graphics/Brush;

    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->brushSize:Landroidx/compose/ui/geometry/Size;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_2
    return-void
.end method

.method public final setDrawStyle(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    sget-object v0, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void

    :cond_1
    instance-of v0, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->getComposePaint()Landroidx/compose/ui/graphics/AndroidPaint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/AndroidPaint;->setStyle-k9PVt8s(I)V

    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->getComposePaint()Landroidx/compose/ui/graphics/AndroidPaint;

    move-result-object v0

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/Stroke;

    iget v1, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;->width:F

    iget-object v0, v0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->getComposePaint()Landroidx/compose/ui/graphics/AndroidPaint;

    move-result-object v0

    iget v1, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;->miter:F

    iget-object v0, v0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->getComposePaint()Landroidx/compose/ui/graphics/AndroidPaint;

    move-result-object v0

    iget v1, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;->join:I

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/AndroidPaint;->setStrokeJoin-Ww9F2mQ(I)V

    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->getComposePaint()Landroidx/compose/ui/graphics/AndroidPaint;

    move-result-object v0

    iget p1, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;->cap:I

    invoke-virtual {v0, p1}, Landroidx/compose/ui/graphics/AndroidPaint;->setStrokeCap-BeK7IIE(I)V

    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->getComposePaint()Landroidx/compose/ui/graphics/AndroidPaint;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Paint;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_2
    :goto_0
    return-void
.end method

.method public final setShadow(Landroidx/compose/ui/graphics/Shadow;)V
    .locals 5

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shadow:Landroidx/compose/ui/graphics/Shadow;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shadow:Landroidx/compose/ui/graphics/Shadow;

    sget-object v0, Landroidx/compose/ui/graphics/Shadow;->None:Landroidx/compose/ui/graphics/Shadow;

    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/Shadow;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Paint;->clearShadowLayer()V

    return-void

    :cond_1
    iget-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shadow:Landroidx/compose/ui/graphics/Shadow;

    iget v0, p1, Landroidx/compose/ui/graphics/Shadow;->blurRadius:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iget-wide v1, p1, Landroidx/compose/ui/graphics/Shadow;->offset:J

    const/16 p1, 0x20

    shr-long/2addr v1, p1

    long-to-int p1, v1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    iget-object v1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shadow:Landroidx/compose/ui/graphics/Shadow;

    iget-wide v1, v1, Landroidx/compose/ui/graphics/Shadow;->offset:J

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    iget-object v2, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shadow:Landroidx/compose/ui/graphics/Shadow;

    iget-wide v2, v2, Landroidx/compose/ui/graphics/Shadow;->color:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Brush;->toArgb-8_81llA(J)I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final setTextDecoration(Landroidx/compose/ui/text/style/TextDecoration;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    iget p1, p1, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    or-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    iget-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    iget p1, p1, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    or-int/lit8 v0, p1, 0x2

    if-ne v0, p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    :cond_3
    :goto_1
    return-void
.end method
