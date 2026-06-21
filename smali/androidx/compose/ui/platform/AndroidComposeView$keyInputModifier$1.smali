.class public final Landroidx/compose/ui/platform/AndroidComposeView$keyInputModifier$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/compose/ui/platform/AndroidComposeView;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;I)V
    .locals 0

    iput p2, p0, Landroidx/compose/ui/platform/AndroidComposeView$keyInputModifier$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView$keyInputModifier$1;->this$0:Landroidx/compose/ui/platform/AndroidComposeView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeView$keyInputModifier$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView$keyInputModifier$1;->this$0:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v0, Landroidx/compose/ui/Actual_androidKt$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroidx/compose/ui/Actual_androidKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/ui/input/key/KeyEvent;

    iget-object p1, p1, Landroidx/compose/ui/input/key/KeyEvent;->nativeKeyEvent:Landroid/view/KeyEvent;

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView$keyInputModifier$1;->this$0:Landroidx/compose/ui/platform/AndroidComposeView;

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->tmpPositionArray:[I

    invoke-static {p1}, Landroidx/compose/ui/input/key/Key_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    move-result-wide v1

    sget-wide v3, Landroidx/compose/ui/input/key/Key;->Tab:J

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_2

    :cond_3
    move v1, v6

    :goto_2
    new-instance v2, Landroidx/compose/ui/focus/FocusDirection;

    invoke-direct {v2, v1}, Landroidx/compose/ui/focus/FocusDirection;-><init>(I)V

    goto/16 :goto_8

    :cond_4
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->DirectionRight:J

    invoke-static {v1, v2, v7, v8}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v2, Landroidx/compose/ui/focus/FocusDirection;

    const/4 v1, 0x4

    invoke-direct {v2, v1}, Landroidx/compose/ui/focus/FocusDirection;-><init>(I)V

    goto/16 :goto_8

    :cond_5
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->DirectionLeft:J

    invoke-static {v1, v2, v7, v8}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v2, Landroidx/compose/ui/focus/FocusDirection;

    const/4 v1, 0x3

    invoke-direct {v2, v1}, Landroidx/compose/ui/focus/FocusDirection;-><init>(I)V

    goto/16 :goto_8

    :cond_6
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->DirectionUp:J

    invoke-static {v1, v2, v7, v8}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v6

    goto :goto_3

    :cond_7
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->PageUp:J

    invoke-static {v1, v2, v7, v8}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v3

    :goto_3
    if-eqz v3, :cond_8

    new-instance v2, Landroidx/compose/ui/focus/FocusDirection;

    const/4 v1, 0x5

    invoke-direct {v2, v1}, Landroidx/compose/ui/focus/FocusDirection;-><init>(I)V

    goto :goto_8

    :cond_8
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->DirectionDown:J

    invoke-static {v1, v2, v7, v8}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v6

    goto :goto_4

    :cond_9
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->PageDown:J

    invoke-static {v1, v2, v7, v8}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v3

    :goto_4
    if-eqz v3, :cond_a

    new-instance v2, Landroidx/compose/ui/focus/FocusDirection;

    const/4 v1, 0x6

    invoke-direct {v2, v1}, Landroidx/compose/ui/focus/FocusDirection;-><init>(I)V

    goto :goto_8

    :cond_a
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->DirectionCenter:J

    invoke-static {v1, v2, v7, v8}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v6

    goto :goto_5

    :cond_b
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->Enter:J

    invoke-static {v1, v2, v7, v8}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v3

    :goto_5
    if-eqz v3, :cond_c

    move v3, v6

    goto :goto_6

    :cond_c
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->NumPadEnter:J

    invoke-static {v1, v2, v7, v8}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v3

    :goto_6
    if-eqz v3, :cond_d

    new-instance v2, Landroidx/compose/ui/focus/FocusDirection;

    const/4 v1, 0x7

    invoke-direct {v2, v1}, Landroidx/compose/ui/focus/FocusDirection;-><init>(I)V

    goto :goto_8

    :cond_d
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->Back:J

    invoke-static {v1, v2, v7, v8}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v3

    if-eqz v3, :cond_e

    move v1, v6

    goto :goto_7

    :cond_e
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->Escape:J

    invoke-static {v1, v2, v7, v8}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    :goto_7
    if-eqz v1, :cond_f

    new-instance v2, Landroidx/compose/ui/focus/FocusDirection;

    const/16 v1, 0x8

    invoke-direct {v2, v1}, Landroidx/compose/ui/focus/FocusDirection;-><init>(I)V

    goto :goto_8

    :cond_f
    move-object v2, v5

    :goto_8
    if-eqz v2, :cond_22

    iget v1, v2, Landroidx/compose/ui/focus/FocusDirection;->value:I

    invoke-static {p1}, Landroidx/compose/ui/input/key/Key_androidKt;->getType-ZmokQxo(Landroid/view/KeyEvent;)I

    move-result p1

    const/4 v3, 0x0

    if-ne p1, v4, :cond_10

    move p1, v6

    goto :goto_9

    :cond_10
    move p1, v3

    :goto_9
    if-nez p1, :cond_11

    goto/16 :goto_12

    :cond_11
    invoke-static {v1}, Landroidx/compose/ui/focus/FocusTraversalKt;->toAndroidFocusDirection-3ESFkO8(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->onFetchFocusRect()Landroidx/compose/ui/geometry/Rect;

    move-result-object v7

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v8

    new-instance v9, Landroidx/compose/ui/platform/AndroidComposeView$keyInputModifier$1$1;

    const/4 v10, 0x1

    invoke-direct {v9, v2, v10}, Landroidx/compose/ui/platform/AndroidComposeView$keyInputModifier$1$1;-><init>(Landroidx/compose/ui/focus/FocusDirection;I)V

    check-cast v8, Landroidx/compose/ui/focus/FocusOwnerImpl;

    invoke-virtual {v8, v1, v7, v9}, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusSearch-ULY8qGw(ILandroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    move-result-object v8

    if-eqz v8, :cond_12

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    goto :goto_a

    :cond_12
    move v8, v6

    :goto_a
    if-eqz v8, :cond_13

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_13

    :cond_13
    if-ne v1, v6, :cond_14

    :goto_b
    move v4, v6

    goto :goto_c

    :cond_14
    if-ne v1, v4, :cond_15

    goto :goto_b

    :cond_15
    move v4, v3

    :goto_c
    if-nez v4, :cond_16

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_13

    :cond_16
    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    move-object v9, p0

    :cond_17
    :goto_d
    if-eqz v9, :cond_1a

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    const-string v11, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v8, v10, v9, v4}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_17

    invoke-virtual {v9, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    goto :goto_f

    :cond_18
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    :goto_e
    if-eqz v10, :cond_1b

    if-ne v10, p0, :cond_19

    goto :goto_d

    :cond_19
    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    goto :goto_e

    :cond_1a
    move-object v9, v5

    :cond_1b
    :goto_f
    invoke-static {v9, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    goto :goto_10

    :cond_1c
    move-object v9, v5

    :goto_10
    if-eqz v9, :cond_1f

    if-eqz v7, :cond_1d

    invoke-static {v7}, Landroidx/compose/ui/graphics/Brush;->toAndroidRect(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    goto :goto_11

    :cond_1d
    move-object v4, v5

    :goto_11
    if-eqz v4, :cond_1e

    invoke-virtual {v9, v0}, Landroid/view/View;->getLocationInWindow([I)V

    aget v7, v0, v3

    aget v8, v0, v6

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    aget v10, v0, v3

    aget v0, v0, v6

    sub-int/2addr v10, v7

    sub-int/2addr v0, v8

    invoke-virtual {v4, v10, v0}, Landroid/graphics/Rect;->offset(II)V

    invoke-static {v9, p1, v4}, Landroidx/compose/ui/focus/FocusTraversalKt;->requestInteropFocus(Landroid/view/View;Ljava/lang/Integer;Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_1f

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_13

    :cond_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid rect"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/focus/FocusOwnerImpl;

    invoke-virtual {p1, v1, v3, v3}, Landroidx/compose/ui/focus/FocusOwnerImpl;->clearFocus-I7lrPNg(IZZ)Z

    move-result p1

    if-nez p1, :cond_20

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_13

    :cond_20
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object p0

    new-instance p1, Landroidx/compose/ui/platform/AndroidComposeView$keyInputModifier$1$1;

    const/4 v0, 0x0

    invoke-direct {p1, v2, v0}, Landroidx/compose/ui/platform/AndroidComposeView$keyInputModifier$1$1;-><init>(Landroidx/compose/ui/focus/FocusDirection;I)V

    check-cast p0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    invoke-virtual {p0, v1, v5, p1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusSearch-ULY8qGw(ILandroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    :cond_21
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_13

    :cond_22
    :goto_12
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_13
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
