.class public final enum Lcom/airbnb/lottie/LottieFeatureFlag;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/airbnb/lottie/LottieFeatureFlag;

.field public static final enum MergePathsApi19:Lcom/airbnb/lottie/LottieFeatureFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/airbnb/lottie/LottieFeatureFlag;

    const-string v1, "MergePathsApi19"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/LottieFeatureFlag;->MergePathsApi19:Lcom/airbnb/lottie/LottieFeatureFlag;

    filled-new-array {v0}, [Lcom/airbnb/lottie/LottieFeatureFlag;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/LottieFeatureFlag;->$VALUES:[Lcom/airbnb/lottie/LottieFeatureFlag;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/LottieFeatureFlag;
    .locals 1

    const-class v0, Lcom/airbnb/lottie/LottieFeatureFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/LottieFeatureFlag;

    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/LottieFeatureFlag;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/LottieFeatureFlag;->$VALUES:[Lcom/airbnb/lottie/LottieFeatureFlag;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/LottieFeatureFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/LottieFeatureFlag;

    return-object v0
.end method
