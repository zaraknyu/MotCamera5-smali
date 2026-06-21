.class public final Lcom/airbnb/lottie/compose/LottieAnimationSizeNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;


# instance fields
.field public height:I

.field public width:I


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 8

    const-string v0, "measurable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/airbnb/lottie/compose/LottieAnimationSizeNode;->width:I

    iget v1, p0, Lcom/airbnb/lottie/compose/LottieAnimationSizeNode;->height:I

    int-to-long v2, v0

    const/16 v0, 0x20

    shl-long/2addr v2, v0

    int-to-long v4, v1

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    or-long v1, v2, v4

    invoke-static {p3, p4, v1, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrain-4WqzIAM(JJ)J

    move-result-wide v1

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v3

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_0

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v3

    if-eq v3, v4, :cond_0

    shr-long p3, v1, v0

    long-to-int p3, p3

    iget p4, p0, Lcom/airbnb/lottie/compose/LottieAnimationSizeNode;->height:I

    mul-int/2addr p4, p3

    iget p0, p0, Lcom/airbnb/lottie/compose/LottieAnimationSizeNode;->width:I

    div-int/2addr p4, p0

    invoke-static {p3, p3, p4, p4}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide p3

    goto :goto_0

    :cond_0
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v3

    if-ne v3, v4, :cond_1

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p3

    if-eq p3, v4, :cond_1

    and-long p3, v1, v6

    long-to-int p3, p3

    iget p4, p0, Lcom/airbnb/lottie/compose/LottieAnimationSizeNode;->width:I

    mul-int/2addr p4, p3

    iget p0, p0, Lcom/airbnb/lottie/compose/LottieAnimationSizeNode;->height:I

    div-int/2addr p4, p0

    invoke-static {p4, p4, p3, p3}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide p3

    goto :goto_0

    :cond_1
    shr-long p3, v1, v0

    long-to-int p0, p3

    and-long p3, v1, v6

    long-to-int p3, p3

    invoke-static {p0, p0, p3, p3}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide p3

    :goto_0
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p0

    iget p2, p0, Landroidx/compose/ui/layout/Placeable;->width:I

    iget p3, p0, Landroidx/compose/ui/layout/Placeable;->height:I

    new-instance p4, Landroidx/compose/ui/draw/PainterNode$measure$1;

    const/16 v0, 0xd

    invoke-direct {p4, p0, v0}, Landroidx/compose/ui/draw/PainterNode$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    sget-object p0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    invoke-interface {p1, p2, p3, p0, p4}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method
