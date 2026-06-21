.class public final enum Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

.field public static final enum BEEP_ONCE:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

.field public static final enum BEEP_TWICE:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

.field public static final enum SHUTTER_CLICK:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

.field public static final enum VIDEO_RECORD:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;


# instance fields
.field public final mRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    const/4 v4, -0x1

    const/4 v5, 0x0

    const-string v1, "SHUTTER_CLICK"

    const/4 v2, 0x0

    const v3, 0x7f110005

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->SHUTTER_CLICK:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    new-instance v1, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const-string v2, "CAMERA_WHEEL"

    const/4 v3, 0x1

    const v4, 0x7f110008

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;-><init>(Ljava/lang/String;IIII)V

    new-instance v2, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const-string v3, "BEEP_ONCE"

    const/4 v4, 0x2

    const v5, 0x7f110001

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;-><init>(Ljava/lang/String;IIII)V

    sput-object v2, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->BEEP_ONCE:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    new-instance v3, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    const/4 v7, -0x1

    const/4 v8, 0x0

    const-string v4, "BEEP_TWICE"

    const/4 v5, 0x3

    const v6, 0x7f110002

    invoke-direct/range {v3 .. v8}, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->BEEP_TWICE:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    new-instance v4, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    const/16 v8, 0x17d

    const/4 v9, 0x0

    const-string v5, "VIDEO_RECORD"

    const/4 v6, 0x4

    const v7, 0x7f11004d

    invoke-direct/range {v4 .. v9}, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;-><init>(Ljava/lang/String;IIII)V

    sput-object v4, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->VIDEO_RECORD:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->$VALUES:[Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->mRes:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->$VALUES:[Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    return-object v0
.end method
