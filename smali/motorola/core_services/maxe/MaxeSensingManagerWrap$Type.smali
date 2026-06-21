.class public Lmotorola/core_services/maxe/MaxeSensingManagerWrap$Type;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmotorola/core_services/maxe/MaxeSensingManagerWrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field public static final APP_SCENARIO:I = 0x65

.field public static final GAZE_FLIP:I = 0x67

.field public static final PRESENCE:I = 0x64

.field public static final PRESENCE_FLIP:I = 0x64

.field public static final PRESENCE_FRONT:I = 0x66


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
