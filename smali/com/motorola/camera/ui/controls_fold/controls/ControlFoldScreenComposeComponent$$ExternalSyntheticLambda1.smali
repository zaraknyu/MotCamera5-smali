.class public final synthetic Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic f$1:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$$ExternalSyntheticLambda1;->f$0:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$Draw$3$1$1$1$1$1;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/runtime/MutableState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$Draw$3$1$1$1$1$1;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$$ExternalSyntheticLambda1;->f$0:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v2, v2, v0, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$$ExternalSyntheticLambda1;->f$0:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Lkotlin/coroutines/CoroutineContext;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
