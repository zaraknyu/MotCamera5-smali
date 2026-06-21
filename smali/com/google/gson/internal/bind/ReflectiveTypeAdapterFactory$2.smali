.class public final Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final field:Ljava/lang/reflect/Field;

.field public final fieldName:Ljava/lang/String;

.field public final serializedName:Ljava/lang/String;

.field public final synthetic val$accessor:Ljava/lang/reflect/Method;

.field public final synthetic val$isPrimitive:Z

.field public final synthetic val$isStaticFinalField:Z

.field public final synthetic val$typeAdapter:Lcom/google/gson/TypeAdapter;

.field public final synthetic val$writeTypeAdapter:Lcom/google/gson/TypeAdapter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lcom/google/gson/TypeAdapter;Lcom/google/gson/TypeAdapter;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$2;->val$accessor:Ljava/lang/reflect/Method;

    iput-object p4, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$2;->val$writeTypeAdapter:Lcom/google/gson/TypeAdapter;

    iput-object p5, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$2;->val$typeAdapter:Lcom/google/gson/TypeAdapter;

    iput-boolean p6, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$2;->val$isPrimitive:Z

    iput-boolean p7, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$2;->val$isStaticFinalField:Z

    iput-object p1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$2;->serializedName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$2;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$2;->fieldName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$2;->val$accessor:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/google/gson/internal/reflect/ReflectionHelper;->getAccessibleObjectDescription(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/google/gson/JsonIOException;

    const-string v0, "Accessor "

    const-string v1, " threw exception"

    invoke-static {v0, p1, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$2;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-ne v0, p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$2;->serializedName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-object p0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$2;->val$writeTypeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
