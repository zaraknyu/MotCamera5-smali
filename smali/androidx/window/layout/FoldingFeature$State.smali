.class public final Landroidx/window/layout/FoldingFeature$State;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/window/layout/WindowInfoTracker;


# static fields
.field public static final FLAT:Landroidx/window/layout/FoldingFeature$State;

.field public static final FOLD:Landroidx/window/layout/FoldingFeature$State;

.field public static final HALF_OPENED:Landroidx/window/layout/FoldingFeature$State;

.field public static final HINGE:Landroidx/window/layout/FoldingFeature$State;


# instance fields
.field public final synthetic $r8$classId:I

.field public final description:Ljava/lang/Object;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/window/layout/FoldingFeature$State;

    const-string v1, "FLAT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/window/layout/FoldingFeature$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/window/layout/FoldingFeature$State;->FLAT:Landroidx/window/layout/FoldingFeature$State;

    new-instance v0, Landroidx/window/layout/FoldingFeature$State;

    const-string v1, "HALF_OPENED"

    invoke-direct {v0, v1, v2}, Landroidx/window/layout/FoldingFeature$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/window/layout/FoldingFeature$State;->HALF_OPENED:Landroidx/window/layout/FoldingFeature$State;

    new-instance v0, Landroidx/window/layout/FoldingFeature$State;

    const-string v1, "FOLD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/window/layout/FoldingFeature$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/window/layout/FoldingFeature$State;->FOLD:Landroidx/window/layout/FoldingFeature$State;

    new-instance v0, Landroidx/window/layout/FoldingFeature$State;

    const-string v1, "HINGE"

    invoke-direct {v0, v1, v2}, Landroidx/window/layout/FoldingFeature$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/window/layout/FoldingFeature$State;->HINGE:Landroidx/window/layout/FoldingFeature$State;

    return-void
.end method

.method public constructor <init>(Landroidx/window/layout/EmptyDecorator;Landroidx/window/layout/adapter/WindowBackend;Lcom/google/android/gms/dynamite/zzf;)V
    .locals 0

    const/4 p1, 0x2

    iput p1, p0, Landroidx/window/layout/FoldingFeature$State;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Landroidx/window/layout/FoldingFeature$State;->description:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/window/layout/FoldingFeature$State;->$r8$classId:I

    iput-object p1, p0, Landroidx/window/layout/FoldingFeature$State;->description:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroidx/window/layout/FoldingFeature$State;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Landroidx/window/layout/FoldingFeature$State;->description:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Landroidx/window/layout/FoldingFeature$State;->description:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public windowLayoutInfo(Landroid/app/Activity;)Lkotlinx/coroutines/flow/Flow;
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$2;-><init>(Landroidx/window/layout/FoldingFeature$State;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    new-instance p0, Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    const/4 p1, -0x2

    sget-object v2, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v3, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-direct {p0, v0, v3, p1, v2}, Lkotlinx/coroutines/flow/CallbackFlowBuilder;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    sget-object v0, Lkotlinx/coroutines/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/Job$Key;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/CoroutineDispatcher;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v3}, Lkotlinx/coroutines/android/HandlerContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x6

    invoke-static {p0, p1, v0, v1, v2}, Lkotlinx/coroutines/flow/internal/ChannelFlowKt;->fuse$default(Lkotlinx/coroutines/flow/internal/FusibleFlow;Lkotlinx/coroutines/android/HandlerContext;ILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Flow context cannot contain job in it. Had "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
