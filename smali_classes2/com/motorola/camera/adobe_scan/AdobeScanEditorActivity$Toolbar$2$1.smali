.class public final Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$Toolbar$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $scrollState:Landroidx/compose/foundation/ScrollState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/ScrollState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$Toolbar$2$1;->$scrollState:Landroidx/compose/foundation/ScrollState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$Toolbar$2$1;

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$Toolbar$2$1;->$scrollState:Landroidx/compose/foundation/ScrollState;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$Toolbar$2$1;-><init>(Landroidx/compose/foundation/ScrollState;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$Toolbar$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$Toolbar$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$Toolbar$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$Toolbar$2$1;->$scrollState:Landroidx/compose/foundation/ScrollState;

    invoke-virtual {p0}, Landroidx/compose/foundation/ScrollState;->getCanScrollForward()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->instrumentationData:Ljava/util/ArrayList;

    const/4 p0, 0x1

    sput-boolean p0, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->hasFullyScrolled:Z

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
