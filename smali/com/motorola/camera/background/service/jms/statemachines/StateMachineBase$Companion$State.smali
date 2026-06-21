.class public abstract Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $cachedSerializer$delegate:Ljava/lang/Object;

.field public static final Companion:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;->Companion:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;->$cachedSerializer$delegate:Ljava/lang/Object;

    return-void
.end method
