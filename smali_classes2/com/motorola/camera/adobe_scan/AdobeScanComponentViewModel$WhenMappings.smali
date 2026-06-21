.class public abstract synthetic Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$DocDetectState;->values()[Lcom/motorola/camera/adobe_scan/AdobeSdkManager$DocDetectState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v3, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$DocDetectState;->NotRequested:Lcom/motorola/camera/adobe_scan/AdobeSdkManager$DocDetectState;

    const/4 v3, 0x3

    aput v1, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-static {}, Lcom/motorola/camera/Notifier$TYPE;->values()[Lcom/motorola/camera/Notifier$TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_2
    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->HIDE_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    sput-object v0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method
