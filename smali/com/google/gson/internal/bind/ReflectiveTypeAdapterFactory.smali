.class public final Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$RecordAdapter;,
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldReflectionAdapter;,
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;
    }
.end annotation


# instance fields
.field public final constructorConstructor:Lcom/google/android/gms/tasks/zzr;

.field public final excluder:Lcom/google/gson/internal/Excluder;

.field public final fieldNamingPolicy:Lcom/google/gson/FieldNamingPolicy;

.field public final jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

.field public final reflectionFilters:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/zzr;Lcom/google/gson/FieldNamingPolicy;Lcom/google/gson/internal/Excluder;Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/android/gms/tasks/zzr;

    iput-object p2, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/google/gson/FieldNamingPolicy;

    iput-object p3, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/google/gson/internal/Excluder;

    iput-object p4, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    iput-object p5, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->reflectionFilters:Ljava/util/List;

    return-void
.end method

.method public static createDuplicateFieldException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " declares multiple JSON fields named \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'; conflict is caused by fields "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/google/gson/internal/reflect/ReflectionHelper;->fieldToString(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " and "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/google/gson/internal/reflect/ReflectionHelper;->fieldToString(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\nSee "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "duplicate-fields"

    const-string p1, "https://github.com/google/gson/blob/main/Troubleshooting.md#"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 4

    iget-object v0, p2, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v1, Lcom/google/gson/internal/reflect/ReflectionHelper;->RECORD_HELPER:Lcom/google/android/gms/internal/mlkit_vision_common/zzhq;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :cond_2
    iget-object v1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->reflectionFilters:Ljava/util/List;

    invoke-static {v1}, Lcom/google/gson/internal/Streams;->getFilterResult(Ljava/util/List;)V

    sget-object v1, Lcom/google/gson/internal/reflect/ReflectionHelper;->RECORD_HELPER:Lcom/google/android/gms/internal/mlkit_vision_common/zzhq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhq;->isRecord(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$RecordAdapter;

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getBoundFields(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;Z)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$RecordAdapter;-><init>(Ljava/lang/Class;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;)V

    return-object v1

    :cond_3
    iget-object v1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/android/gms/tasks/zzr;

    invoke-virtual {v1, p2, v2}, Lcom/google/android/gms/tasks/zzr;->get(Lcom/google/gson/reflect/TypeToken;Z)Lcom/google/gson/internal/ObjectConstructor;

    move-result-object v1

    new-instance v2, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldReflectionAdapter;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v0, v3}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getBoundFields(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;Z)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;

    move-result-object p0

    invoke-direct {v2, v1, p0}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldReflectionAdapter;-><init>(Lcom/google/gson/internal/ObjectConstructor;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;)V

    return-object v2
.end method

.method public final getBoundFields(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;Z)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v7, p3

    invoke-virtual {v7}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;->EMPTY:Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;

    return-object v0

    :cond_0
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v10, p2

    move-object v11, v7

    :goto_0
    const-class v1, Ljava/lang/Object;

    if-eq v11, v1, :cond_16

    invoke-virtual {v11}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v12

    if-eq v11, v7, :cond_1

    array-length v1, v12

    if-lez v1, :cond_1

    iget-object v1, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->reflectionFilters:Ljava/util/List;

    invoke-static {v1}, Lcom/google/gson/internal/Streams;->getFilterResult(Ljava/util/List;)V

    :cond_1
    array-length v13, v12

    const/4 v14, 0x0

    move v15, v14

    :goto_1
    if-ge v15, v13, :cond_15

    aget-object v1, v12, v15

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->includeField(Ljava/lang/reflect/Field;Z)Z

    move-result v24

    invoke-virtual {v0, v1, v14}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->includeField(Ljava/lang/reflect/Field;Z)Z

    move-result v3

    if-nez v24, :cond_2

    if-nez v3, :cond_2

    move-object/from16 v3, p1

    goto/16 :goto_e

    :cond_2
    const-class v4, Lcom/google/gson/annotations/SerializedName;

    const/16 v25, 0x0

    if-eqz p4, :cond_6

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_3

    move/from16 v26, v14

    :goto_2
    move-object/from16 v19, v25

    goto :goto_4

    :cond_3
    sget-object v5, Lcom/google/gson/internal/reflect/ReflectionHelper;->RECORD_HELPER:Lcom/google/android/gms/internal/mlkit_vision_common/zzhq;

    invoke-virtual {v5, v11, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhq;->getAccessor(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-static {v5}, Lcom/google/gson/internal/reflect/ReflectionHelper;->makeAccessible(Ljava/lang/reflect/AccessibleObject;)V

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v5, v14}, Lcom/google/gson/internal/reflect/ReflectionHelper;->getAccessibleObjectDescription(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/JsonIOException;

    const-string v2, "@SerializedName on "

    const-string v3, " is not supported"

    invoke-static {v2, v0, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_3
    move/from16 v26, v3

    move-object/from16 v19, v5

    goto :goto_4

    :cond_6
    move/from16 v26, v3

    goto :goto_2

    :goto_4
    if-nez v19, :cond_7

    invoke-static {v1}, Lcom/google/gson/internal/reflect/ReflectionHelper;->makeAccessible(Ljava/lang/reflect/AccessibleObject;)V

    :cond_7
    iget-object v3, v10, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3, v11, v5, v6}, Lcom/google/gson/internal/Streams;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/google/gson/annotations/SerializedName;

    if-nez v4, :cond_8

    iget-object v4, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/google/gson/FieldNamingPolicy;

    invoke-virtual {v4, v1}, Lcom/google/gson/FieldNamingPolicy;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_5

    :cond_8
    invoke-interface {v4}, Lcom/google/gson/annotations/SerializedName;->value()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lcom/google/gson/annotations/SerializedName;->alternate()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v28, v5

    move-object v5, v4

    move-object/from16 v4, v28

    :goto_5
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move/from16 p2, v2

    move-object v2, v4

    goto :goto_6

    :cond_9
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v16

    move/from16 p2, v2

    add-int/lit8 v2, v16, 0x1

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v2, v6

    :goto_6
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v17, v4

    check-cast v17, Ljava/lang/String;

    new-instance v4, Lcom/google/gson/reflect/TypeToken;

    invoke-direct {v4, v3}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    iget-object v3, v4, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_a

    move/from16 v22, p2

    goto :goto_7

    :cond_a
    move/from16 v22, v14

    :goto_7
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v3

    if-eqz v3, :cond_b

    move/from16 v23, p2

    goto :goto_8

    :cond_b
    move/from16 v23, v14

    :goto_8
    const-class v3, Lcom/google/gson/annotations/JsonAdapter;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/google/gson/annotations/JsonAdapter;

    if-eqz v5, :cond_c

    move-object v6, v2

    iget-object v2, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/android/gms/tasks/zzr;

    move-object v3, v6

    const/4 v6, 0x0

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    move/from16 v16, p2

    move-object/from16 v27, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->getTypeAdapter(Lcom/google/android/gms/tasks/zzr;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/annotations/JsonAdapter;Z)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    goto :goto_9

    :cond_c
    move-object/from16 v3, p1

    move/from16 v16, p2

    move-object/from16 v18, v1

    move-object/from16 v27, v2

    move-object/from16 v1, v25

    :goto_9
    if-eqz v1, :cond_d

    move/from16 v2, v16

    goto :goto_a

    :cond_d
    move v2, v14

    :goto_a
    if-nez v1, :cond_e

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    :cond_e
    if-eqz v24, :cond_10

    if-eqz v2, :cond_f

    move-object v2, v1

    goto :goto_b

    :cond_f
    new-instance v2, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    iget-object v4, v4, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    invoke-direct {v2, v3, v1, v4}, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    :goto_b
    move-object/from16 v20, v2

    goto :goto_c

    :cond_10
    move-object/from16 v20, v1

    :goto_c
    new-instance v16, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$2;

    move-object/from16 v21, v1

    invoke-direct/range {v16 .. v23}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$2;-><init>(Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lcom/google/gson/TypeAdapter;Lcom/google/gson/TypeAdapter;ZZ)V

    move-object/from16 v2, v16

    move-object/from16 v4, v17

    move-object/from16 v1, v18

    if-eqz v26, :cond_12

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v8, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$2;

    if-nez v14, :cond_11

    const/4 v14, 0x0

    goto :goto_d

    :cond_11
    iget-object v0, v14, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$2;->field:Ljava/lang/reflect/Field;

    invoke-static {v7, v6, v0, v1}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->createDuplicateFieldException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V

    throw v25

    :cond_12
    if-eqz v24, :cond_14

    invoke-interface {v9, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$2;

    if-nez v2, :cond_13

    goto :goto_e

    :cond_13
    iget-object v0, v2, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$2;->field:Ljava/lang/reflect/Field;

    invoke-static {v7, v4, v0, v1}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->createDuplicateFieldException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V

    throw v25

    :cond_14
    :goto_e
    add-int/lit8 v15, v15, 0x1

    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_15
    move-object/from16 v3, p1

    iget-object v1, v10, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v11}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v11, v2, v4}, Lcom/google/gson/internal/Streams;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    move-result-object v1

    new-instance v10, Lcom/google/gson/reflect/TypeToken;

    invoke-direct {v10, v1}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    iget-object v11, v10, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    goto/16 :goto_0

    :cond_16
    new-instance v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v8, v1}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;-><init>(Ljava/util/Map;Ljava/util/List;)V

    return-object v0
.end method

.method public final includeField(Ljava/lang/reflect/Field;Z)Z
    .locals 2

    iget-object p0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/google/gson/internal/Excluder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x88

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    :goto_0
    move p0, v1

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/Excluder;->excludeClass(Ljava/lang/Class;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/google/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/google/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0

    :cond_5
    :goto_2
    const/4 p0, 0x0

    :goto_3
    xor-int/2addr p0, v1

    return p0
.end method
