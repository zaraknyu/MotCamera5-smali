.class public final enum Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

.field public static final enum AUDIO_TRACKING:Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

.field public static final enum INIT:Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

.field public static final enum STARTED:Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

.field public static final enum VIDEO_TRACKING:Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;->INIT:Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

    new-instance v1, Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

    const-string v2, "STARTED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;->STARTED:Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

    new-instance v2, Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

    const-string v3, "VIDEO_TRACKING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;->VIDEO_TRACKING:Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

    new-instance v3, Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

    const-string v4, "AUDIO_TRACKING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;->AUDIO_TRACKING:Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

    filled-new-array {v0, v1, v2, v3}, [Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;->$VALUES:[Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;
    .locals 1

    const-class v0, Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;
    .locals 1

    sget-object v0, Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;->$VALUES:[Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

    invoke-virtual {v0}, [Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

    return-object v0
.end method
