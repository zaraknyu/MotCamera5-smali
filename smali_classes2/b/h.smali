.class public final Lb/h;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lb/o;

.field public final synthetic b:Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningInput;

.field public final synthetic c:Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningOutput;


# direct methods
.method public constructor <init>(Lb/o;Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningInput;Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningOutput;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lb/h;->a:Lb/o;

    iput-object p2, p0, Lb/h;->b:Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningInput;

    iput-object p3, p0, Lb/h;->c:Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningOutput;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lb/h;

    iget-object v0, p0, Lb/h;->b:Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningInput;

    iget-object v1, p0, Lb/h;->c:Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningOutput;

    iget-object p0, p0, Lb/h;->a:Lb/o;

    invoke-direct {p1, p0, v0, v1, p2}, Lb/h;-><init>(Lb/o;Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningInput;Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningOutput;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lb/h;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lb/h;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lb/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lb/h;->a:Lb/o;

    iget-object p1, p1, Lb/o;->b:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/adobe/magic_clean/CameraCleanAndroidShim;

    iget-object v0, p0, Lb/h;->b:Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningInput;

    iget-object p0, p0, Lb/h;->c:Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningOutput;

    invoke-virtual {p1, v0, p0}, Lcom/adobe/magic_clean/CameraCleanAndroidShim;->CropAndClean(Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningInput;Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningOutput;)Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    move-result-object p0

    return-object p0
.end method
