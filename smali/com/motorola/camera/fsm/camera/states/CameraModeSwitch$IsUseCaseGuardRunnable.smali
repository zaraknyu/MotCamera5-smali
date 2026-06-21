.class public final Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mIsUseCase:Z

.field public final mUseCase:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/settings/SettingsManager$Key;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;->mUseCase:Ljava/io/Serializable;

    .line 3
    iput-boolean p2, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;->mIsUseCase:Z

    return-void
.end method

.method public constructor <init>(Z[Lcom/motorola/camera/fsm/camera/UseCase;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;->$r8$classId:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;->mUseCase:Ljava/io/Serializable;

    .line 7
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;->mIsUseCase:Z

    return-void
.end method

.method public constructor <init>([Lcom/motorola/camera/fsm/camera/UseCase;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;->$r8$classId:I

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0, p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>(Z[Lcom/motorola/camera/fsm/camera/UseCase;)V

    return-void
.end method


# virtual methods
.method public final canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z
    .locals 0

    iget p2, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;->mUseCase:Ljava/io/Serializable;

    check-cast p1, Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;->mIsUseCase:Z

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object p1

    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;->mUseCase:Ljava/io/Serializable;

    check-cast p2, [Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;->mIsUseCase:Z

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
