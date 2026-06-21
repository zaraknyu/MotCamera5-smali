.class public final Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lokio/Timeout;

.field public static volatile align512:Z = false

.field public static volatile initialize:Z = true

.field public static volatile swapChroma:Z


# instance fields
.field public final mcfJson:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokio/Timeout;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lokio/Timeout;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->Companion:Lokio/Timeout;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "mcfJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->mcfJson:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final cacheConfig()V
    .locals 4

    sget-boolean v0, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->initialize:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->Companion:Lokio/Timeout;

    iget-object p0, p0, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->mcfJson:Lorg/json/JSONObject;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->initialize:Z

    if-eqz v1, :cond_3

    const-string v1, "camerax"

    const/4 v2, -0x1

    invoke-static {v1, p0, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    const-string v3, "align-512"

    invoke-static {v3, p0, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    move v3, v1

    :goto_0
    sput-boolean v3, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->align512:Z

    const-string/jumbo v3, "swap-chroma"

    invoke-static {v3, p0, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    sput-boolean p0, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->swapChroma:Z

    :cond_2
    sput-boolean v1, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->initialize:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v0

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    return-void
.end method
