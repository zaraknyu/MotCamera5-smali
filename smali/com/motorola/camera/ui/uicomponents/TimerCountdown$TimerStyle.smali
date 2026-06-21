.class public final enum Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

.field public static final enum AIR_GESTURE_VIDEO:Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

.field public static final enum DEFAULT:Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

.field public static final enum LONG_EXPOSURE:Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

.field public static final enum TIME_CLOCK:Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;->DEFAULT:Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

    const-string v2, "LONG_EXPOSURE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;->LONG_EXPOSURE:Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

    const-string v3, "TIME_CLOCK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;->TIME_CLOCK:Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

    new-instance v3, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

    const-string v4, "AIR_GESTURE_VIDEO"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;->AIR_GESTURE_VIDEO:Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

    filled-new-array {v0, v1, v2, v3}, [Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;->$VALUES:[Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;->$VALUES:[Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

    return-object v0
.end method
