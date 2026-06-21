.class public final enum Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

.field public static final enum Close:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

.field public static final Companion:Lokio/Timeout;

.field public static final enum None:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

.field public static final enum Open:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->None:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    const-string v2, "Open"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->Open:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    const-string v3, "Close"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->Close:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    filled-new-array {v0, v1, v2}, [Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    new-instance v0, Lokio/Timeout;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lokio/Timeout;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->Companion:Lokio/Timeout;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    return-object v0
.end method
