.class public abstract Landroidx/compose/animation/core/EasingKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FastOutSlowInEasing:Landroidx/compose/animation/core/CubicBezierEasing;

.field public static final LinearEasing:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/animation/core/EasingKt;->FastOutSlowInEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    invoke-direct {v0, v2, v2, v3, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    invoke-direct {v0, v1, v2, v4, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    new-instance v0, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    return-void
.end method
