.class public final Lcom/tinder/StateMachine$Graph$State$TransitionTo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final sideEffect:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;

.field public final toState:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tinder/StateMachine$Graph$State$TransitionTo;->toState:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;

    iput-object p2, p0, Lcom/tinder/StateMachine$Graph$State$TransitionTo;->sideEffect:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/tinder/StateMachine$Graph$State$TransitionTo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tinder/StateMachine$Graph$State$TransitionTo;

    iget-object v0, p0, Lcom/tinder/StateMachine$Graph$State$TransitionTo;->toState:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;

    iget-object v1, p1, Lcom/tinder/StateMachine$Graph$State$TransitionTo;->toState:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tinder/StateMachine$Graph$State$TransitionTo;->sideEffect:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;

    iget-object p1, p1, Lcom/tinder/StateMachine$Graph$State$TransitionTo;->sideEffect:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/tinder/StateMachine$Graph$State$TransitionTo;->toState:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/tinder/StateMachine$Graph$State$TransitionTo;->sideEffect:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TransitionTo(toState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tinder/StateMachine$Graph$State$TransitionTo;->toState:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sideEffect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tinder/StateMachine$Graph$State$TransitionTo;->sideEffect:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
