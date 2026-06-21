.class public Lmotorola/core_services/maxe/MaxeSensingManagerWrap$Event;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmotorola/core_services/maxe/MaxeSensingManagerWrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# static fields
.field public static final ID_APP_SCENARIO_CHANGED:I = 0xc9

.field public static final ID_GAZE_CHANGED:I = 0xca

.field public static final ID_PRESENCE_CHANGED:I = 0xc8

.field public static final ID_PRESENCE_FLIP_CHANGED:I = 0xc8

.field public static final OPT_ABSENCE:I = 0x0

.field public static final OPT_APP_SCENARIO_INT:Ljava/lang/String; = "asi"

.field public static final OPT_CAMERA_MODE:I = 0x2

.field public static final OPT_FACE_DETECT:I = 0x1

.field public static final OPT_FACE_UNDETECT:I = 0x0

.field public static final OPT_GAME_MODE:I = 0x3

.field public static final OPT_GAZE_DETECT:I = 0x2

.field public static final OPT_GAZE_STATUS_INT:Ljava/lang/String; = "gsi"

.field public static final OPT_IS_PRESENCE_BOOLEAN:Ljava/lang/String; = "ipb"

.field public static final OPT_NORMAL_MODE:I = 0x0

.field public static final OPT_PRESENCE:I = 0x1

.field public static final OPT_PRESENCE_STATUS_INT:Ljava/lang/String; = "psi"

.field public static final OPT_SENSING_TYPE_INT:Ljava/lang/String; = "sti"

.field public static final OPT_UNKNOWN:I = 0x3

.field public static final OPT_VIDEO_MODE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
