.class public final enum Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;

.field public static final enum CANCEL:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;

.field public static final enum COMPLETE:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;

.field public static final enum IDLE:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;

.field public static final enum INITIALIZED:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;

.field public static final enum PROCESSING:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;->IDLE:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;

    new-instance v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;

    const-string v2, "INITIALIZED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;->INITIALIZED:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;

    new-instance v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;

    const-string v3, "PROCESSING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;->PROCESSING:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;

    new-instance v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;

    const-string v4, "CANCEL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;->CANCEL:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;

    new-instance v4, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;

    const-string v5, "COMPLETE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;->COMPLETE:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;->$VALUES:[Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;
    .locals 1

    const-class v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;
    .locals 1

    sget-object v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;->$VALUES:[Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;

    return-object v0
.end method
