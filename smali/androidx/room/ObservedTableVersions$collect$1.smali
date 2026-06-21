.class public final Landroidx/room/ObservedTableVersions$collect$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Landroidx/room/ObservedTableVersions;


# direct methods
.method public constructor <init>(Landroidx/room/ObservedTableVersions;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/ObservedTableVersions$collect$1;->this$0:Landroidx/room/ObservedTableVersions;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Landroidx/room/ObservedTableVersions$collect$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/room/ObservedTableVersions$collect$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/room/ObservedTableVersions$collect$1;->label:I

    iget-object p1, p0, Landroidx/room/ObservedTableVersions$collect$1;->this$0:Landroidx/room/ObservedTableVersions;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Landroidx/room/ObservedTableVersions;->collect(Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object p0
.end method
