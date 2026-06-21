.class public final synthetic Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const v0, 0x7f12014a

    invoke-static {v0, p1, p2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(ILcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$resetDialogClickListener$1$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$resetDialogClickListener$1$1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    invoke-static {p1, v0, v0, p2, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object p1

    new-instance p2, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    const/16 v0, 0xd

    invoke-direct {p2, v0, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/Camera;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/Camera;->onCtaDialogNegativeButtonClick(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
