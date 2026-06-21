.class public final Landroidx/compose/foundation/gestures/snapping/AnimationResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final currentAnimationState:Landroidx/compose/animation/core/AnimationState;

.field public final remainingOffset:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Ljava/lang/Float;Landroidx/compose/animation/core/AnimationState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/snapping/AnimationResult;->remainingOffset:Ljava/lang/Float;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/snapping/AnimationResult;->currentAnimationState:Landroidx/compose/animation/core/AnimationState;

    return-void
.end method
