.class public final Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$5$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $baseRotation:Landroidx/compose/runtime/State;

.field public final synthetic $color:J

.field public final synthetic $currentRotation:Landroidx/compose/runtime/State;

.field public final synthetic $endAngle:Landroidx/compose/runtime/State;

.field public final synthetic $startAngle:Landroidx/compose/runtime/State;

.field public final synthetic $stroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

.field public final synthetic $strokeWidth:F

.field public final synthetic $trackColor:J


# direct methods
.method public constructor <init>(FJJLandroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;Landroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 0

    iput-wide p2, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$5$1;->$trackColor:J

    iput-object p10, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$5$1;->$stroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

    iput-object p6, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$5$1;->$currentRotation:Landroidx/compose/runtime/State;

    iput-object p7, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$5$1;->$endAngle:Landroidx/compose/runtime/State;

    iput-object p8, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$5$1;->$startAngle:Landroidx/compose/runtime/State;

    iput-object p9, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$5$1;->$baseRotation:Landroidx/compose/runtime/State;

    iput p1, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$5$1;->$strokeWidth:F

    iput-wide p4, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$5$1;->$color:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    iget-wide v3, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$5$1;->$trackColor:J

    iget-object v5, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$5$1;->$stroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/ProgressIndicatorKt;->drawCircularIndicator-42QJj7c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    iget-object p1, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$5$1;->$currentRotation:Landroidx/compose/runtime/State;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    const/high16 v1, 0x43580000    # 216.0f

    mul-float/2addr p1, v1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    iget-object v1, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$5$1;->$endAngle:Landroidx/compose/runtime/State;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget-object v2, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$5$1;->$startAngle:Landroidx/compose/runtime/State;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v3, -0x3d4c0000    # -90.0f

    add-float/2addr p1, v3

    iget-object v3, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$5$1;->$baseRotation:Landroidx/compose/runtime/State;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    add-float/2addr v3, p1

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    add-float/2addr p1, v3

    iget v2, v5, Landroidx/compose/ui/graphics/drawscope/Stroke;->cap:I

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    sget v2, Landroidx/compose/material3/ProgressIndicatorKt;->CircularIndicatorDiameter:F

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$5$1;->$strokeWidth:F

    div-float/2addr v3, v2

    const v2, 0x42652ee1

    mul-float/2addr v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v3, v2

    :goto_0
    add-float/2addr p1, v2

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-wide v3, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$5$1;->$color:J

    move v1, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/ProgressIndicatorKt;->drawCircularIndicator-42QJj7c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
