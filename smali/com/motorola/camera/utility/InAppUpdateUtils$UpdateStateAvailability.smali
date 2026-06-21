.class public final enum Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

.field public static final enum RETRY_UPDATE_FAILED:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

.field public static final enum UPDATE_AVAILABLE:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

.field public static final enum UPDATE_STATE:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

.field public static final enum UPDATE_UNAVAILABLE:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    const-string v1, "UPDATE_AVAILABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;->UPDATE_AVAILABLE:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    new-instance v1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    const-string v2, "UPDATE_UNAVAILABLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;->UPDATE_UNAVAILABLE:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    new-instance v2, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    const-string v3, "RETRY_UPDATE_FAILED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;->RETRY_UPDATE_FAILED:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    new-instance v3, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    const-string v4, "UPDATE_STATE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;->UPDATE_STATE:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    filled-new-array {v0, v1, v2, v3}, [Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;->$VALUES:[Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;
    .locals 1

    const-class v0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;
    .locals 1

    sget-object v0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;->$VALUES:[Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    return-object v0
.end method
