.class public final Lcom/google/android/play/core/splitinstall/testing/zzaa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lkotlinx/coroutines/internal/Symbol;


# instance fields
.field public final zzb:Lorg/xmlpull/v1/XmlPullParser;

.field public final zzc:Landroidx/sqlite/db/SimpleSQLiteQuery;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "LocalTestingConfigParser"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/splitinstall/testing/zzaa;->zza:Lkotlinx/coroutines/internal/Symbol;

    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/testing/zzaa;->zzb:Lorg/xmlpull/v1/XmlPullParser;

    sget-object p1, Lcom/google/android/play/core/splitinstall/testing/zzc;->zza:Lcom/google/android/play/core/splitinstall/testing/zzc;

    new-instance p1, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const/16 v0, 0x15

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(IZ)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p1, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/testing/zzaa;->zzc:Landroidx/sqlite/db/SimpleSQLiteQuery;

    return-void
.end method


# virtual methods
.method public final zze(Ljava/lang/String;Lcom/google/android/play/core/splitinstall/testing/zzz;)V
    .locals 3

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/zzaa;->zzb:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Lcom/google/android/play/core/splitinstall/testing/zzz;->zza()V

    goto :goto_0

    :cond_2
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' tag but found \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method
