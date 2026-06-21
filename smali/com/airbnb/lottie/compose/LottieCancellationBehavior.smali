.class public final enum Lcom/airbnb/lottie/compose/LottieCancellationBehavior;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/airbnb/lottie/compose/LottieCancellationBehavior;

.field public static final enum Immediately:Lcom/airbnb/lottie/compose/LottieCancellationBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/airbnb/lottie/compose/LottieCancellationBehavior;

    const-string v1, "Immediately"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/compose/LottieCancellationBehavior;->Immediately:Lcom/airbnb/lottie/compose/LottieCancellationBehavior;

    new-instance v1, Lcom/airbnb/lottie/compose/LottieCancellationBehavior;

    const-string v2, "OnIterationFinish"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1}, [Lcom/airbnb/lottie/compose/LottieCancellationBehavior;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/compose/LottieCancellationBehavior;->$VALUES:[Lcom/airbnb/lottie/compose/LottieCancellationBehavior;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/compose/LottieCancellationBehavior;
    .locals 1

    const-class v0, Lcom/airbnb/lottie/compose/LottieCancellationBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/compose/LottieCancellationBehavior;

    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/compose/LottieCancellationBehavior;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/compose/LottieCancellationBehavior;->$VALUES:[Lcom/airbnb/lottie/compose/LottieCancellationBehavior;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/compose/LottieCancellationBehavior;

    return-object v0
.end method
