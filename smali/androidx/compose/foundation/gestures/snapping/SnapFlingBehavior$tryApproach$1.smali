.class public final Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;->this$0:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;->this$0:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->access$tryApproach(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1$4;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
