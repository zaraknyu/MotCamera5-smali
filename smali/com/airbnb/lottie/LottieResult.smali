.class public final Lcom/airbnb/lottie/LottieResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final exception:Ljava/lang/Throwable;

.field public final value:Lcom/airbnb/lottie/LottieComposition;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/airbnb/lottie/LottieResult;->value:Lcom/airbnb/lottie/LottieComposition;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/airbnb/lottie/LottieResult;->exception:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/airbnb/lottie/LottieResult;->exception:Ljava/lang/Throwable;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/airbnb/lottie/LottieResult;->value:Lcom/airbnb/lottie/LottieComposition;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/airbnb/lottie/LottieResult;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/airbnb/lottie/LottieResult;

    iget-object v0, p0, Lcom/airbnb/lottie/LottieResult;->value:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v0, :cond_2

    iget-object v1, p1, Lcom/airbnb/lottie/LottieResult;->value:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    iget-object p0, p0, Lcom/airbnb/lottie/LottieResult;->exception:Ljava/lang/Throwable;

    if-eqz p0, :cond_3

    iget-object p1, p1, Lcom/airbnb/lottie/LottieResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieResult;->value:Lcom/airbnb/lottie/LottieComposition;

    iget-object p0, p0, Lcom/airbnb/lottie/LottieResult;->exception:Ljava/lang/Throwable;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
