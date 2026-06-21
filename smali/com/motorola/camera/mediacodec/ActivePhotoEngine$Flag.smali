.class public final enum Lcom/motorola/camera/mediacodec/ActivePhotoEngine$Flag;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/mediacodec/ActivePhotoEngine$Flag;

.field public static final enum ERROR:Lcom/motorola/camera/mediacodec/ActivePhotoEngine$Flag;

.field public static final enum RUNNING:Lcom/motorola/camera/mediacodec/ActivePhotoEngine$Flag;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/motorola/camera/mediacodec/ActivePhotoEngine$Flag;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mediacodec/ActivePhotoEngine$Flag;->ERROR:Lcom/motorola/camera/mediacodec/ActivePhotoEngine$Flag;

    new-instance v1, Lcom/motorola/camera/mediacodec/ActivePhotoEngine$Flag;

    const-string v2, "STARTED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/motorola/camera/mediacodec/ActivePhotoEngine$Flag;

    const-string v3, "RUNNING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/mediacodec/ActivePhotoEngine$Flag;->RUNNING:Lcom/motorola/camera/mediacodec/ActivePhotoEngine$Flag;

    filled-new-array {v0, v1, v2}, [Lcom/motorola/camera/mediacodec/ActivePhotoEngine$Flag;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/mediacodec/ActivePhotoEngine$Flag;->$VALUES:[Lcom/motorola/camera/mediacodec/ActivePhotoEngine$Flag;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/mediacodec/ActivePhotoEngine$Flag;
    .locals 1

    const-class v0, Lcom/motorola/camera/mediacodec/ActivePhotoEngine$Flag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mediacodec/ActivePhotoEngine$Flag;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/mediacodec/ActivePhotoEngine$Flag;
    .locals 1

    sget-object v0, Lcom/motorola/camera/mediacodec/ActivePhotoEngine$Flag;->$VALUES:[Lcom/motorola/camera/mediacodec/ActivePhotoEngine$Flag;

    invoke-virtual {v0}, [Lcom/motorola/camera/mediacodec/ActivePhotoEngine$Flag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/mediacodec/ActivePhotoEngine$Flag;

    return-object v0
.end method
