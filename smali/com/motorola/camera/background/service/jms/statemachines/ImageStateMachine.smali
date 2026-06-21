.class public final Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;
.super Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final jobKey:J

.field public final stateMachine:Lcom/tinder/StateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLcom/motorola/camera/background/service/jms/JobMgrScheduler;Lcom/motorola/camera/background/service/jms/JobDatabase;)V
    .locals 1

    const-string v0, "dbIntf"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3, p4}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lcom/motorola/camera/background/service/jms/JobDatabase;)V

    iput-wide p1, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;->jobKey:J

    new-instance p1, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda0;

    invoke-direct {p1, p4, p0}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;)V

    new-instance p2, Lcom/tinder/StateMachine;

    new-instance p3, Lcom/tinder/StateMachine$GraphBuilder;

    invoke-direct {p3}, Lcom/tinder/StateMachine$GraphBuilder;-><init>()V

    invoke-virtual {p1, p3}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/tinder/StateMachine$Graph;

    iget-object p4, p3, Lcom/tinder/StateMachine$GraphBuilder;->initialState:Ljava/lang/Object;

    if-eqz p4, :cond_0

    iget-object v0, p3, Lcom/tinder/StateMachine$GraphBuilder;->stateDefinitions:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/LinkedHashMap;)Ljava/util/Map;

    move-result-object v0

    iget-object p3, p3, Lcom/tinder/StateMachine$GraphBuilder;->onTransitionListeners:Ljava/util/ArrayList;

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p1, p4, v0, p3}, Lcom/tinder/StateMachine$Graph;-><init>(Ljava/lang/Object;Ljava/util/Map;Ljava/util/List;)V

    invoke-direct {p2, p1}, Lcom/tinder/StateMachine;-><init>(Lcom/tinder/StateMachine$Graph;)V

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;->stateMachine:Lcom/tinder/StateMachine;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value was null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
