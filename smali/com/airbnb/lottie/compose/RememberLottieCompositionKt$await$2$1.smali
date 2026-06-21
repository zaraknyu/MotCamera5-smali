.class public final Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$await$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# instance fields
.field public final synthetic $cont:Lkotlinx/coroutines/CancellableContinuationImpl;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/CancellableContinuationImpl;I)V
    .locals 0

    iput p2, p0, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$await$2$1;->$r8$classId:I

    iput-object p1, p0, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$await$2$1;->$cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$await$2$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$await$2$1;->$cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$await$2$1;->$cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
