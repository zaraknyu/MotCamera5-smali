.class public final Lcom/motorola/camera/fsm/camera/CameraState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

.field public final mAutoTransitionState:Z

.field public final mEntryCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

.field public final mExitAfterFireChange:Lcom/motorola/camera/fsm/camera/CameraRunnable;

.field public final mExitCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

.field public final mHierarchy:[Lcom/motorola/camera/fsm/camera/CameraState;

.field public final mParent:Lcom/motorola/camera/fsm/camera/CameraState;

.field public final mQualifiedName:Ljava/lang/String;

.field public final mStateKey:Ljava/lang/Object;

.field public final mTransitions:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/CameraState$1;)V
    .locals 10

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/StateKey;

    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mEntryCode:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/CameraRunnable;

    iget-object v2, p1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitCode:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/fsm/camera/CameraRunnable;

    iget-object v3, p1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitAfterFireChange:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/fsm/camera/CameraRunnable;

    iget-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/fsm/camera/CameraRunnable;

    iget-object v5, p1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/fsm/camera/CameraState;

    iget-object v6, p1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast v6, Ljava/util/LinkedHashSet;

    iget-boolean p1, p1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAutoTransitionState:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState;->mStateKey:Ljava/lang/Object;

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/CameraState;->mAutoTransitionState:Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState;->mTransitions:Ljava/util/HashMap;

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/CameraTransition;

    iget-object v7, p0, Lcom/motorola/camera/fsm/camera/CameraState;->mTransitions:Ljava/util/HashMap;

    iget-object v8, v0, Lcom/motorola/camera/fsm/camera/CameraTransition;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraState;->mEntryCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/CameraState;->mExitCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    iput-object v3, p0, Lcom/motorola/camera/fsm/camera/CameraState;->mExitAfterFireChange:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    iput-object v4, p0, Lcom/motorola/camera/fsm/camera/CameraState;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    iput-object v5, p0, Lcom/motorola/camera/fsm/camera/CameraState;->mParent:Lcom/motorola/camera/fsm/camera/CameraState;

    if-nez v5, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState;->mStateKey:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState;->mQualifiedName:Ljava/lang/String;

    filled-new-array {p0}, [Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState;->mHierarchy:[Lcom/motorola/camera/fsm/camera/CameraState;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v5, Lcom/motorola/camera/fsm/camera/CameraState;->mQualifiedName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState;->mStateKey:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState;->mQualifiedName:Ljava/lang/String;

    iget-object p1, v5, Lcom/motorola/camera/fsm/camera/CameraState;->mHierarchy:[Lcom/motorola/camera/fsm/camera/CameraState;

    array-length v0, p1

    add-int/2addr v0, v6

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/CameraState;

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState;->mHierarchy:[Lcom/motorola/camera/fsm/camera/CameraState;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    aput-object p0, v0, p1

    return-void

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "stateKey must not be null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static builder()Lcom/motorola/camera/fsm/camera/CameraState$1;
    .locals 1

    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    return-object v0
.end method
