.class public final Lcom/motorola/camera/JsonConfig$ManualExposureOverride;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final expMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$ManualExposureOverride;->expMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$ManualExposureOverride;->expMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
