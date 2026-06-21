.class public final Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/gestures/ScrollScope;


# instance fields
.field public final synthetic $nestedScrollScope:Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

.field public final synthetic this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;->$nestedScrollScope:Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    return-void
.end method


# virtual methods
.method public final scrollBy(F)F
    .locals 3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    iget-object v2, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_1

    iget-object v0, v2, Landroidx/compose/foundation/gestures/ScrollingLogic;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    invoke-interface {v0}, Landroidx/compose/foundation/gestures/ScrollableState;->getCanScrollForward()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    iget-object v0, v2, Landroidx/compose/foundation/gestures/ScrollingLogic;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    invoke-interface {v0}, Landroidx/compose/foundation/gestures/ScrollableState;->getCanScrollBackward()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, v2, Landroidx/compose/foundation/gestures/ScrollingLogic;->isScrollableNodeAttached:Landroidx/compose/foundation/gestures/ScrollableNode$scrollingLogic$1;

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/ScrollableNode$scrollingLogic$1;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    invoke-virtual {v2, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toOffset-tuRUvjQ(F)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    move-result-wide v0

    const/4 p1, 0x2

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;->$nestedScrollScope:Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;->scrollByWithOverscroll-OzD1aCk(IJ)J

    move-result-wide p0

    invoke-virtual {v2, p0, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toFloat-k-4lQ0M(J)F

    move-result p0

    invoke-virtual {v2, p0}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded(F)F

    move-result p0

    return p0

    :cond_3
    new-instance p0, Landroidx/compose/foundation/MutationInterruptedException;

    const-string p1, "The fling animation was cancelled"

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroidx/compose/foundation/MutationInterruptedException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method
