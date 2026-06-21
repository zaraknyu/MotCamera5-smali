.class public final synthetic Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p2, p0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    iget p1, p0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    check-cast p1, Landroidx/lifecycle/Lifecycle$Event;

    iget-object p0, p0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/MutableState;

    if-ne p2, p1, :cond_0

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    check-cast p1, Landroidx/activity/OnBackPressedDispatcher;

    iget-object p0, p0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast p0, Landroidx/activity/ComponentActivity;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p0

    const-string p2, "activity.getOnBackInvokedDispatcher()"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, p1, Landroidx/activity/OnBackPressedDispatcher;->invokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    iget-boolean p0, p1, Landroidx/activity/OnBackPressedDispatcher;->hasEnabledCallbacks:Z

    invoke-virtual {p1, p0}, Landroidx/activity/OnBackPressedDispatcher;->updateBackInvokedCallbackState(Z)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
