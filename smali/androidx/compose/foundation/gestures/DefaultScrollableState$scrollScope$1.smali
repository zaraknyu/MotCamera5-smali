.class public final Landroidx/compose/foundation/gestures/DefaultScrollableState$scrollScope$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/gestures/ScrollScope;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/ScrollScope;Landroidx/compose/foundation/pager/PagerState;)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, Landroidx/compose/foundation/gestures/DefaultScrollableState$scrollScope$1;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DefaultScrollableState$scrollScope$1;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/Fsm;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/foundation/gestures/DefaultScrollableState$scrollScope$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DefaultScrollableState$scrollScope$1;->this$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final scrollBy(F)F
    .locals 5

    iget v0, p0, Landroidx/compose/foundation/gestures/DefaultScrollableState$scrollScope$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/DefaultScrollableState$scrollScope$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/gestures/ScrollScope;

    invoke-interface {p0, p1}, Landroidx/compose/foundation/gestures/ScrollScope;->scrollBy(F)F

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DefaultScrollableState$scrollScope$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/Fsm;

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Lambda;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/fsm/Fsm;->mAutoTransEvent:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    cmpl-float v2, p1, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmLoader:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    move v3, v4

    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    move v1, p1

    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
